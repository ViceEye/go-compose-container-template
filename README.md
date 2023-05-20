# Go Docker Compose Remote Containerised Development Template

`.air` - live reload component for docker to hook on

When using `docker-compose` to develop Golang remotely, there needs to be a persistent go program for docker to monitor. 

But in the beginning, you have nothing, a simple HTTP program cannot be persisted, so a live-reload component is helpful.