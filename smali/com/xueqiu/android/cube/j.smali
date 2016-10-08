.class public final Lcom/xueqiu/android/cube/j;
.super Landroid/support/v4/a/i;
.source "CubeTopListActivity.java"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Landroid/support/v4/a/i;-><init>()V

    .line 418
    new-instance v0, Lcom/xueqiu/android/cube/j$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/j$1;-><init>(Lcom/xueqiu/android/cube/j;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/j;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 456
    const v0, 0x7f03011a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 457
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/support/v4/a/i;->a(Landroid/os/Bundle;)V

    .line 438
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 462
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/i;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1467
    const v1, 0x7f0e045f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070473

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1468
    const v1, 0x7f0e0460

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u7ec4\u5408\u7efc\u5408\u5b9e\u529b\u79c0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1469
    const v1, 0x7f0e0462

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%d\u4e2a\u7ec4\u5408\u65b0\u5165\u699c"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    return-void
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 442
    invoke-super {p0}, Landroid/support/v4/a/i;->o()V

    .line 443
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xueqiu.android.cube.toplist"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/j;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/cube/j;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 445
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 449
    invoke-super {p0}, Landroid/support/v4/a/i;->p()V

    .line 450
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/j;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/j;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 451
    return-void
.end method
