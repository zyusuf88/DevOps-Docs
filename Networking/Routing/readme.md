# Routing

## What is Routing?
Routing is the process of determining the best path for data to travel across networks.

## Why is Routing Important?
- Ensures data reaches its destination efficiently.
- Fundamental for the smooth functioning of the internet.

## Process of Routing

### How is Routing Done?
Routing is done using **routing tables** that make decisions on the best path. The **router** is the component responsible for directing data.

### Example:
- Data starts from your machine.
- It hits your router, which determines the best path for the data to follow.

## Why is Routing Important for Engineers?
- **Network Performance Optimisation**: Routing helps find the most optimal path for data packets, reducing latency and improving overall network performance.
- **Reliable Application Delivery**: Routing improves the reliability of delivering applications by ensuring data reaches the destination even during network issues.
- **Managing Complex Infrastructure**: Understanding routing is crucial for managing complex network environments and troubleshooting issues effectively.

# Static vs. Dynamic Routing

- **Static Routing**: 
  - Simple to set up.
  - The path is fixed and not updated automatically.
  - Not scalable, but great for small networks.
  
- **Dynamic Routing**: 
  - Automatically adjusts.
  - Uses routing protocols to find the best path.
  - Scalable and adaptable for large, complex networks.

## Routing Protocols

### What is a Routing Protocol?
- Routing protocols automate route determination and enhance network efficiency.
- They help prevent congestion by dynamically updating routes.
- Routing protocols are algorithms that determine the best paths and help improve network resilience by finding alternative paths if one goes down.

### Common Routing Protocols:

- **OSPF (Open Shortest Path First)**:
  - Finds the shortest path for data to travel.
  - Mainly used in large organizations.
  - Uses link status information to make routing decisions, considering network status and cost.
  - Known for its fast convergence, quickly calculating routes when there are changes in the network.

- **BGP (Border Gateway Protocol)**:
  - Routes between different autonomous systems (AS).
  - Uses a path vector mechanism to determine the best route.



