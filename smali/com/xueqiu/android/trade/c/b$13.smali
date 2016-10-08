.class final Lcom/xueqiu/android/trade/c/b$13;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$13;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$13;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->j(Lcom/xueqiu/android/trade/c/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 351
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$13;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->d(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/widget/p;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b$13;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/b;->j(Lcom/xueqiu/android/trade/c/b;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/c/b$13$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/b$13$1;-><init>(Lcom/xueqiu/android/trade/c/b$13;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/p;->a(ILandroid/widget/EditText;Lcom/xueqiu/android/common/widget/r;)V

    .line 357
    const/4 v0, 0x0

    return v0
.end method
