.class final Lcom/xueqiu/android/cube/c;
.super Landroid/support/v4/a/v;
.source "CreateCubeActivity.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/cube/CreateCubeActivity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/CreateCubeActivity;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/xueqiu/android/cube/c;->b:Lcom/xueqiu/android/cube/CreateCubeActivity;

    .line 181
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 182
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/cube/c;->b:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->b(Lcom/xueqiu/android/cube/CreateCubeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/cube/c;->b:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->b(Lcom/xueqiu/android/cube/CreateCubeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
