docker network create network
docker run --network=network -e PORT=3000 --name planner -d dockplanner
docker run --network=network -e PORT=8080 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker --name worker -d dockworkers