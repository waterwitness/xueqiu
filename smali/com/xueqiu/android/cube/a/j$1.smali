.class final Lcom/xueqiu/android/cube/a/j$1;
.super Ljava/lang/Object;
.source "CubeListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/a/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Cube;

.field final synthetic b:Lcom/xueqiu/android/cube/a/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a/j;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/j$1;->b:Lcom/xueqiu/android/cube/a/j;

    iput-object p2, p0, Lcom/xueqiu/android/cube/a/j$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/j$1;->b:Lcom/xueqiu/android/cube/a/j;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/j;->i:Lcom/xueqiu/android/cube/a/i;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/j$1;->b:Lcom/xueqiu/android/cube/a/j;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/j;->i:Lcom/xueqiu/android/cube/a/i;

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/j$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/cube/a/i;->a(Lcom/xueqiu/android/cube/model/Cube;)V

    .line 155
    :cond_0
    return-void
.end method
