#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

/**
 * infinite_while - Function that keeps the program running infinitely
 *
 * This function is used to keep the program running after creating the
 * parent process and the zombie processes.
 *
 * Return: Always returns 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1); /* Sleep for 1 second  */
	}
	return (0);
}

/**
 * main - Entry point for the program
 *
 * Description:
 * This program creates five zombie processes.
 *
 * Return: Always returns 0
 */
int main(void)
{
	int i, pid;

	for (i = 0; i < 5; i++)
	{
		pid = fork(); /* Create a child process */

		if (pid == 0) /* Child process */
		{
			printf("Zombie process created, PID: %d\n", getpid());
			return (0); /* Exit child process */
		}
	}

	infinite_while(); /* Keep the program running infinitely */
	return (0);
}
