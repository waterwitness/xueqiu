.class final Lcom/xueqiu/android/community/c/f;
.super Landroid/support/v4/a/v;
.source "HomeFragment.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/community/c/c;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/c/c;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/xueqiu/android/community/c/f;->b:Lcom/xueqiu/android/community/c/c;

    .line 623
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 624
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/xueqiu/android/community/c/f;->b:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->u(Lcom/xueqiu/android/community/c/c;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 629
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/f;->b:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->h(Lcom/xueqiu/android/community/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserGroup;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/c/d;->a(Lcom/xueqiu/android/community/model/UserGroup;Z)Lcom/xueqiu/android/community/c/d;

    move-result-object v0

    return-object v0

    .line 628
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 634
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/v;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/c/d;

    .line 635
    iget-object v1, p0, Lcom/xueqiu/android/community/c/f;->b:Lcom/xueqiu/android/community/c/c;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/c;->f(Lcom/xueqiu/android/community/c/c;)[Lcom/xueqiu/android/community/c/d;

    move-result-object v1

    aput-object v0, v1, p2

    .line 636
    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/xueqiu/android/community/c/f;->b:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->h(Lcom/xueqiu/android/community/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/xueqiu/android/community/c/f;->b:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->h(Lcom/xueqiu/android/community/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/UserGroup;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 645
    const/4 v0, -0x2

    return v0
.end method
