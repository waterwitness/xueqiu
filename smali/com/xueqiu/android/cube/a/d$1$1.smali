.class final Lcom/xueqiu/android/cube/a/d$1$1;
.super Ljava/lang/Object;
.source "CubeHoldingAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a/d$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/a/d$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a/d$1;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/d$1$1;->a:Lcom/xueqiu/android/cube/a/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d$1$1;->a:Lcom/xueqiu/android/cube/a/d$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d$1;->b:Lcom/xueqiu/android/cube/a/d;

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d$1$1;->a:Lcom/xueqiu/android/cube/a/d$1;

    iget-object v1, v1, Lcom/xueqiu/android/cube/a/d$1;->a:Lcom/xueqiu/android/cube/model/Holding;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/a/d;->a(Lcom/xueqiu/android/cube/a/d;Lcom/xueqiu/android/cube/model/Holding;)V

    .line 125
    return-void
.end method
