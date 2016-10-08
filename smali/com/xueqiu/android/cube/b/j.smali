.class public final Lcom/xueqiu/android/cube/b/j;
.super Lcom/xueqiu/android/common/c;
.source "SearchCubeFragment.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private c:Lcom/xueqiu/android/cube/a/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    return-void
.end method

.method public static u()Lcom/xueqiu/android/cube/b/j;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/xueqiu/android/cube/b/j;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/b/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/b/j;->e_(Z)V

    .line 48
    const v0, 0x7f030136

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0e0331

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/j;->a:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f0e0175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/j;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v2, Lcom/xueqiu/android/cube/a/r;

    const-string v3, "\u4e0a\u5347\u6700\u5feb"

    new-instance v4, Lcom/xueqiu/android/cube/b/j$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/j$1;-><init>(Lcom/xueqiu/android/cube/b/j;)V

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/cube/a/r;-><init>(Ljava/lang/String;Lcom/xueqiu/android/cube/a/s;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v2, Lcom/xueqiu/android/cube/a/r;

    const-string v3, "\u6536\u76ca\u7387\u6700\u9ad8"

    new-instance v4, Lcom/xueqiu/android/cube/b/j$2;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/j$2;-><init>(Lcom/xueqiu/android/cube/b/j;)V

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/cube/a/r;-><init>(Ljava/lang/String;Lcom/xueqiu/android/cube/a/s;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v2, Lcom/xueqiu/android/cube/a/r;

    const-string v3, "\u70ed\u95e8\u4e3b\u9898"

    new-instance v4, Lcom/xueqiu/android/cube/b/j$3;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/j$3;-><init>(Lcom/xueqiu/android/cube/b/j;)V

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/cube/a/r;-><init>(Ljava/lang/String;Lcom/xueqiu/android/cube/a/s;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcom/xueqiu/android/cube/a/r;

    const-string v3, "\u5173\u6ce8\u4eba\u6570"

    new-instance v4, Lcom/xueqiu/android/cube/b/j$4;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/j$4;-><init>(Lcom/xueqiu/android/cube/b/j;)V

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/cube/a/r;-><init>(Ljava/lang/String;Lcom/xueqiu/android/cube/a/s;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v2, Lcom/xueqiu/android/cube/a/q;

    const-string v3, "\u53d1\u73b0\u66f4\u591a\u7ec4\u5408"

    invoke-direct {v2, v3, v1}, Lcom/xueqiu/android/cube/a/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v2, Lcom/xueqiu/android/cube/a/r;

    const-string v3, "24\u5c0f\u65f6\u70ed\u80a1"

    new-instance v4, Lcom/xueqiu/android/cube/b/j$5;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/j$5;-><init>(Lcom/xueqiu/android/cube/b/j;)V

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/cube/a/r;-><init>(Ljava/lang/String;Lcom/xueqiu/android/cube/a/s;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v2, Lcom/xueqiu/android/cube/a/r;

    const-string v3, "24\u5c0f\u65f6\u70ed\u95e8\u8bdd\u9898"

    new-instance v4, Lcom/xueqiu/android/cube/b/j$6;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/j$6;-><init>(Lcom/xueqiu/android/cube/b/j;)V

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/cube/a/r;-><init>(Ljava/lang/String;Lcom/xueqiu/android/cube/a/s;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v2, Lcom/xueqiu/android/cube/a/q;

    const-string v3, "\u66f4\u591a\u5206\u7c7b\u68c0\u7d22"

    invoke-direct {v2, v3, v1}, Lcom/xueqiu/android/cube/a/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/xueqiu/android/cube/a/p;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/j;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xueqiu/android/cube/a/p;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/xueqiu/android/cube/b/j;->c:Lcom/xueqiu/android/cube/a/p;

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/j;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/j;->c:Lcom/xueqiu/android/cube/a/p;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/j;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 103
    return-void
.end method
