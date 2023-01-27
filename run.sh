docker network create network
docker run --network=network -e PORT=8080 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker -e ADD=true -e MULT=false --name worker -d dockworker
docker run --network=network -e PORT=8081 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker1 -e ADD=false -e MULT=true --name worker1 -d dockworker
docker run --network=network -e PORT=8082 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker2 -e ADD=true -e MULT=false --name worker2 -d dockworker
docker run --network=network -e PORT=3000 --name planner -d dockplanner
