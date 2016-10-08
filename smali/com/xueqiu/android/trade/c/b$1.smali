.class final Lcom/xueqiu/android/trade/c/b$1;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/b;-><init>(Lcom/xueqiu/android/common/b;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$1;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 172
    and-int/lit8 v0, p2, 0x6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$1;->a:Lcom/xueqiu/android/trade/c/b;

    .line 173
    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->a(Lcom/xueqiu/android/trade/c/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 173
    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$1;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->b(Lcom/xueqiu/android/trade/c/b;)V

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
