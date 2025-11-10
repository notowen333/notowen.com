This is my second try at a software blog. My first attempt was in college. I was studying at Wesleyan University, a small liberal arts college 
in Connecticut, trying to get a software internship. At Wesleyan the CS curriculum focused mainly on the math/proofs/programming languages. I
had very little practical software engineering skills. I didn't know what a unit test was, I hadn't heard of SQL, and I didn't understand the
basics of a client server relationship.

I also didn't have interview-style alogrithms skills, so I failed all the automated assessments that companies sent me. This began my quest to 
learn practical skills and get a job. I joined the [privacy tech lab](https://privacytechlab.org) at Wesleyan where I worked on [Privacy Pioneer](https://github.com/privacy-tech-lab/privacy-pioneer),
a browser extension that read HTTP request and responses and generated "privacy labels" based on automated scanning techniques. It was a great experience to work 
on software in a team setting, extending other people's work and adhering to code style and structure conventions. Browser extensions are implemented as mini-webpages in the popup, and then
they also usually have a full-sized webpage to go along with them, so we wrote a React app to implement those web pages. The backend was an extension ["worker"](https://developer.chrome.com/docs/extensions/develop/concepts/service-workers) which was a
JavaScript (we didn't think to write TypeScript) program that ran in the background after installing the extension.

What I didn't really put together while working on Privacy Pioneer was how most software applications are built by combining managed services; modeling them, deploying them, providing credentials to them, calling into them. For storage, for 
compute, for networking, for authentication—-managed services, whether internal or external, are dominant. And I didn't know anything about any of that until I started at AWS after graduation.
To be fair to Privacy Pioneer, as a browser extension focused on privacy, we went out of our way to keep everything local. We used cookies and [IndexedDB](https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API) a local broswer
store to read and write results from the extension.


```bash
sudo yum install
```

WIP
