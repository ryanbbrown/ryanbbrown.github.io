---

---
*Last updated: January 11, 2026*

I care a lot about the tools I use and frequently try out new ones or try to optimize my existing tools. 

## Development

- [VSCode](https://code.visualstudio.com/): Mostly for viewing code at this point.
- [iTerm2](https://iterm2.com/): More stable and customizable than the integrated VSCode terminal, my setup here is pretty basic though since I mostly use tmux.
- [Claude Code](https://www.claude.com/product/claude-code): I use tmux to run 3-5 Claude Code sessions in parallel; each is often on their own git worktree working on parallel features. I'll have a "main" session that cherry-picks from the various worktrees and resolves conflicts. Currently using [ticket](https://github.com/wedow/ticket.git) to encode dependencies and break up the work into discreet chunks for the agents to work on.

## AI

- [GeminiDesk](https://github.com/hillelbh15-blip/GeminiDesk) / [Claude.ai](https://claude.ai/): I like having a dedicated desktop app for my chatbot use, but I'm not 100% settled on one yet. I was using ChatGPT for a long time, but it started getting a little buggy. I really like the always-on-top companion window from ChatGPT though, so I added it as a feature to my fork of GeminiDesk and switched to. Vibes-wise I wasn't a huge fan of Gemini, though, so now I'm using Claude and am building a separate always-on-top companion window app (which should eventually be able to support Gemini, Claude, and ChatGPT).
	- ChatGPT bugs: (1) your cursor doesn't focus in the text entry box after running the global keyboard shortcut, so you have to manually click on it, which kind of defeats the purpose; (2) on the main app window, new chats would show up with old prompts pre-entered in the text entry box
	- Claude's not perfect though; I really don't like that you can't switch models during a chat (switching models opens a new chat)
- [Superhuman](https://superhuman.com/): Email client and to-do list. At $30/month Superhuman is *pricy* and I don’t even use the AI features, but I like having a modern, snappy, dedicated email client with keyboard shortcuts. I send myself emails as to-do items because I’m too forgetful for two separate apps.
- [Monologue](https://www.monologue.to/): Voice to text anywhere your cursor is. Even though I can type ~140wpm, it requires a lot more focus than speaking and is less fluid. I’m slowly starting to talk more and type less, although some days more than others. Monologue is the first app for this that I found and it works well enough for me at $10/month, I've heard good things about superwhisper too but never had a reason to try it out. 

## General Productivity

- [Obsidian](https://obsidian.md/): I recently switched over from Notion; the (relatively) new [bases](https://help.obsidian.md/bases) feature on Obsidian is a fine replacement for Notion databases, and being markdown-native makes it much better for AI editing (see my [blog post](https://blog.ryanbbrown.com/p/ai-will-never-master-powerpoint) on LLM native formats).
- [Google Chrome](https://www.google.com/chrome/): I’m not a stickler for security and Chrome is familiar. I don’t think I have a strong use case for an AI browser (yet). 
- [Charmstone](https://charmstone.app/): App switcher / launcher. Having essentially one keyboard shortcut to access 8 different apps is convenient and heavily satisfying for my keyboard shortcut obsession.
- [Maccy](https://maccy.app/): Clipboard history. Not having to go back and re-copy text comes in handy more often than you’d think.