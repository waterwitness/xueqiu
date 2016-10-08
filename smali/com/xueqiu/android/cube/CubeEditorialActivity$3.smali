.class final Lcom/xueqiu/android/cube/CubeEditorialActivity$3;
.super Ljava/lang/Object;
.source "CubeEditorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeEditorialActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeEditorialActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeEditorialActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$3;->b:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$3;->b:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 111
    return-void
.end method
