.class final Lcom/xueqiu/android/trade/c/e$24;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$24;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 938
    if-eqz p2, :cond_0

    .line 939
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$24;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->B(Lcom/xueqiu/android/trade/c/e;)V

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$24;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->ab(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xueqiu/android/trade/c/e;->a(Landroid/widget/LinearLayout;Z)V

    .line 942
    const-string v0, ""

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$24;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->ac(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$24;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->ad(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$24;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->ac(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/xueqiu/android/trade/b/b;->a(ZLjava/lang/String;)V

    .line 945
    :cond_1
    return-void
.end method
