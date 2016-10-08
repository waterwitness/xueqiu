.class final Lcom/xueqiu/android/cube/h;
.super Landroid/support/v4/a/v;
.source "CubeTopListActivity.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/cube/CubeTopListActivity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/xueqiu/android/cube/h;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    .line 400
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 401
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/xueqiu/android/cube/h;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->j(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/h;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeTopListActivity;->j(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/xueqiu/android/cube/h;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->j(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
