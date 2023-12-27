import argparse
from gtts import gTTS

def text_file_to_speech(input_file, language='en', output_file='output.mp3'):
    """
    Convert text from a file to speech and save it as an audio file.

    :param input_file: The path to the input text file.
    :param language: The language of the text (default is 'en' for English).
    :param output_file: The name of the output audio file (default is 'output.mp3').
    """
    # Read text from the file
    with open(input_file, 'r', encoding='utf-8') as file:
        text = file.read()

    # Convert text to speech and save as an audio file
    tts = gTTS(text=text, lang=language, slow=False)
    tts.save(output_file)
    print(f'Audio file saved as {output_file}')

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert text from a file to speech.")
    parser.add_argument("input_file", help="Path to the input text file.")
    parser.add_argument("-l", "--language", default="en", help="Language of the text (default is 'en' for English).")
    parser.add_argument("-o", "--output_file", default="output.mp3", help="Name of the output audio file (default is 'output.mp3').")
    
    args = parser.parse_args()

    text_file_to_speech(args.input_file, language=args.language, output_file=args.output_file)
