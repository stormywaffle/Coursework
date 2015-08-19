/* Some code I made demonstrating nested-if statements. Created by Mark Corre */
#include <stdio.h>

int main ()
{
  int c;
  puts ("You are looking for your cat who ran away. You are at a fork in the road. You have two choices, type 'l' for left and 'r' for right.");
  c = getchar();
  if (c == 'l'){
   puts ("You arrive at a forest. You come upon a tree. type 'c' to climb up the tree or 'a' to go around it.");
   c = getchar();
   /*Need to consume the newline */
   c = getchar();
   if (c == 'c'){
    puts ("At the top of a tree you see an owl. You get scared and fall of the tree and hit your head and get knocked out."); 
   }
   else if (c == 'a'){
    puts ("You get to the other side of the tree. At the other side you see your cat snuggled up against the tree.");
   }
  }
  else if (c == 'r'){
   puts ("After enough walking you get to a bridge. Type 'c' to cross it. Otherwise type 'a' to go around it.");
   c = getchar();
   /*Need to consume the newline */
   c = getchar();
   if (c == 'c'){
    puts ("At the other side of the bridge you see your cat. Congrats! You found him!"); 
   }
   else if (c == 'a'){
    puts ("After going around the bridge you trip on a rock fall down and injure your leg. Who knows if you'll get some help?");
   }
  }
  return 0;
}
