# stable-diffusion-discord-prompts

All messages from dreambot from all dream-x channels in stable-diffusion discord

raw-messages: messages in gzipped csv format, with every column 

stripped-content: messages in gzipped csv format, with only the "Content" column stripped, where the "!dream" command is

prompts-only: gzipped stripped prompts only in line-separation


bash command to extract the archives:

cd raw-messages

IFS=$'\n' ; for file in $(ls *.gz); do gunzip $file; done

cd stripped-content

IFS=$'\n' ; for file in $(ls *.gz); do gunzip $file; done

cd prompts-only

IFS=$'\n' ; for file in $(ls *.gz); do gunzip $file; done
