.class final Lcom/xueqiu/android/cube/CubeFlyOrderActivity$2;
.super Ljava/lang/Object;
.source "CubeFlyOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$2;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$2;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$2;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 613
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$2;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 614
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$2;->a:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 615
    return-void
.end method
