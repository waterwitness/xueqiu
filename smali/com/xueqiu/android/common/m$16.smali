.class final Lcom/xueqiu/android/common/m$16;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/m;->F()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/model/ProfileMenuItem;

.field final synthetic b:Lcom/xueqiu/android/common/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/xueqiu/android/common/m$16;->b:Lcom/xueqiu/android/common/m;

    iput-object p2, p0, Lcom/xueqiu/android/common/m$16;->a:Lcom/xueqiu/android/common/model/ProfileMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 664
    invoke-static {p1}, Lcom/xueqiu/android/common/m;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/xueqiu/android/common/m$16;->b:Lcom/xueqiu/android/common/m;

    iget-object v1, p0, Lcom/xueqiu/android/common/m$16;->a:Lcom/xueqiu/android/common/model/ProfileMenuItem;

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/common/m;->a(Lcom/xueqiu/android/common/m;Landroid/view/View;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/m$16;->b:Lcom/xueqiu/android/common/m;

    invoke-static {v0}, Lcom/xueqiu/android/common/m;->e(Lcom/xueqiu/android/common/m;)V

    .line 668
    return-void
.end method
