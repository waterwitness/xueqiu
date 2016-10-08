.class final Lcom/xueqiu/android/cube/a/c$2;
.super Ljava/lang/Object;
.source "CubeCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a/c;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/CubeCalGainType;ZZ)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Cube;

.field final synthetic b:Lcom/xueqiu/android/cube/a/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a/c;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/c$2;->b:Lcom/xueqiu/android/cube/a/c;

    iput-object p2, p0, Lcom/xueqiu/android/cube/a/c$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c$2;->b:Lcom/xueqiu/android/cube/a/c;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/c;->n:Lcom/xueqiu/android/cube/a/b;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c$2;->b:Lcom/xueqiu/android/cube/a/c;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/c;->n:Lcom/xueqiu/android/cube/a/b;

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/c$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/cube/a/b;->a(Lcom/xueqiu/android/cube/model/Cube;)V

    .line 222
    :cond_0
    return-void
.end method
