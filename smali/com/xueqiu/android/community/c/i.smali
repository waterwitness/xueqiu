.class final Lcom/xueqiu/android/community/c/i;
.super Landroid/support/v4/a/v;
.source "HotTopicFragment.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/community/c/g;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/c/g;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xueqiu/android/community/c/i;->b:Lcom/xueqiu/android/community/c/g;

    .line 89
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/c/i;->b:Lcom/xueqiu/android/community/c/g;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/c/g;->a(Lcom/xueqiu/android/community/c/g;I)Landroid/support/v4/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/v;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 100
    iget-object v1, p0, Lcom/xueqiu/android/community/c/i;->b:Lcom/xueqiu/android/community/c/g;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/g;->a(Lcom/xueqiu/android/community/c/g;)[Landroid/support/v4/a/i;

    move-result-object v1

    aput-object v0, v1, p2

    .line 102
    iget-object v1, p0, Lcom/xueqiu/android/community/c/i;->b:Lcom/xueqiu/android/community/c/g;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/g;->a(Lcom/xueqiu/android/community/c/g;)[Landroid/support/v4/a/i;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/c/i;->b:Lcom/xueqiu/android/community/c/g;

    invoke-static {v2}, Lcom/xueqiu/android/community/c/g;->b(Lcom/xueqiu/android/community/c/g;)Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    .line 103
    instance-of v2, v1, Lcom/xueqiu/android/community/c/h;

    if-eqz v2, :cond_0

    .line 104
    check-cast v1, Lcom/xueqiu/android/community/c/h;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/xueqiu/android/community/c/h;->a:Z

    .line 106
    :cond_0
    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/community/c/i;->b:Lcom/xueqiu/android/community/c/g;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/g;->c(Lcom/xueqiu/android/community/c/g;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/community/c/i;->b:Lcom/xueqiu/android/community/c/g;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/g;->c(Lcom/xueqiu/android/community/c/g;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/i;->b:Lcom/xueqiu/android/community/c/g;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/g;->c(Lcom/xueqiu/android/community/c/g;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
