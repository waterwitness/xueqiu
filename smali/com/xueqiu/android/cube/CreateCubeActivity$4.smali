.class final Lcom/xueqiu/android/cube/CreateCubeActivity$4;
.super Ljava/lang/Object;
.source "CreateCubeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CreateCubeActivity;->onBackPressed()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CreateCubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CreateCubeActivity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$4;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$4;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0704ec

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$4;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->finish()V

    .line 168
    return-void
.end method
