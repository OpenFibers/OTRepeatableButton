Just press and hold, button will repeat its action!  
Easy to support repeat acceleration:  

```
OTRepeatableButton *button = [[OTRepeatableButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    
NSTimeInterval defaultRepeatInterval = button.repeatInterval;
__weak typeof(button) weakButton = button;
button.action = ^{
    NSLog(@"Actived! %tu", weakButton.currentRepeatCount);
    weakButton.repeatInterval = defaultRepeatInterval / (1 + weakButton.currentRepeatCount / 10);
};
button.repeatEndedAction = ^{
    NSLog(@"Repeat ended");
};
```

```
2016-05-27 16:47:11.607 OTRepeatableButtonDemo[4793:3499457] Actived! 1
2016-05-27 16:47:12.608 OTRepeatableButtonDemo[4793:3499457] Actived! 2
2016-05-27 16:47:12.809 OTRepeatableButtonDemo[4793:3499457] Actived! 3
2016-05-27 16:47:13.010 OTRepeatableButtonDemo[4793:3499457] Actived! 4
2016-05-27 16:47:13.212 OTRepeatableButtonDemo[4793:3499457] Actived! 5
2016-05-27 16:47:13.414 OTRepeatableButtonDemo[4793:3499457] Actived! 6
2016-05-27 16:47:13.615 OTRepeatableButtonDemo[4793:3499457] Actived! 7
2016-05-27 16:47:13.817 OTRepeatableButtonDemo[4793:3499457] Actived! 8
2016-05-27 16:47:14.018 OTRepeatableButtonDemo[4793:3499457] Actived! 9
2016-05-27 16:47:14.220 OTRepeatableButtonDemo[4793:3499457] Actived! 10
2016-05-27 16:47:14.321 OTRepeatableButtonDemo[4793:3499457] Actived! 11
2016-05-27 16:47:14.422 OTRepeatableButtonDemo[4793:3499457] Actived! 12
2016-05-27 16:47:14.523 OTRepeatableButtonDemo[4793:3499457] Actived! 13
2016-05-27 16:47:14.624 OTRepeatableButtonDemo[4793:3499457] Actived! 14
2016-05-27 16:47:14.726 OTRepeatableButtonDemo[4793:3499457] Actived! 15
2016-05-27 16:47:14.827 OTRepeatableButtonDemo[4793:3499457] Actived! 16
2016-05-27 16:47:14.928 OTRepeatableButtonDemo[4793:3499457] Actived! 17
2016-05-27 16:47:15.029 OTRepeatableButtonDemo[4793:3499457] Actived! 18
2016-05-27 16:47:15.130 OTRepeatableButtonDemo[4793:3499457] Actived! 19
2016-05-27 16:47:15.232 OTRepeatableButtonDemo[4793:3499457] Actived! 20
2016-05-27 16:47:15.299 OTRepeatableButtonDemo[4793:3499457] Actived! 21
2016-05-27 16:47:15.367 OTRepeatableButtonDemo[4793:3499457] Actived! 22
2016-05-27 16:47:15.435 OTRepeatableButtonDemo[4793:3499457] Actived! 23
2016-05-27 16:47:15.503 OTRepeatableButtonDemo[4793:3499457] Actived! 24
2016-05-27 16:47:15.571 OTRepeatableButtonDemo[4793:3499457] Actived! 25
2016-05-27 16:47:15.639 OTRepeatableButtonDemo[4793:3499457] Actived! 26
2016-05-27 16:47:15.707 OTRepeatableButtonDemo[4793:3499457] Actived! 27
2016-05-27 16:47:15.774 OTRepeatableButtonDemo[4793:3499457] Actived! 28
2016-05-27 16:47:15.842 OTRepeatableButtonDemo[4793:3499457] Actived! 29
2016-05-27 16:47:15.910 OTRepeatableButtonDemo[4793:3499457] Actived! 30
2016-05-27 16:47:15.961 OTRepeatableButtonDemo[4793:3499457] Actived! 31
2016-05-27 16:47:16.012 OTRepeatableButtonDemo[4793:3499457] Actived! 32
2016-05-27 16:47:16.064 OTRepeatableButtonDemo[4793:3499457] Actived! 33
2016-05-27 16:47:16.115 OTRepeatableButtonDemo[4793:3499457] Actived! 34
2016-05-27 16:47:16.167 OTRepeatableButtonDemo[4793:3499457] Actived! 35
2016-05-27 16:47:16.217 OTRepeatableButtonDemo[4793:3499457] Actived! 36
2016-05-27 16:47:16.268 OTRepeatableButtonDemo[4793:3499457] Actived! 37
2016-05-27 16:47:16.320 OTRepeatableButtonDemo[4793:3499457] Actived! 38
2016-05-27 16:47:16.351 OTRepeatableButtonDemo[4793:3499457] Repeat ended
```