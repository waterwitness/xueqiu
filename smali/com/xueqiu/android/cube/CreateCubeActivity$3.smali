.class final Lcom/xueqiu/android/cube/CreateCubeActivity$3;
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
    .line 147
    iput-object p1, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$3;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$3;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->e(Lcom/xueqiu/android/cube/CreateCubeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$3;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CreateCubeActivity;->e(Lcom/xueqiu/android/cube/CreateCubeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$3;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0704ed

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 152
    return-void
.end method
