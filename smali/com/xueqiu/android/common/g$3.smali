.class final Lcom/xueqiu/android/common/g$3;
.super Ljava/lang/Object;
.source "InputSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/g;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/g;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xueqiu/android/common/g$3;->a:Lcom/xueqiu/android/common/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/common/g$3;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->a(Lcom/xueqiu/android/common/g;)Lcom/xueqiu/android/common/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/g$3;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->c(Lcom/xueqiu/android/common/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/xueqiu/android/common/g$3;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v1}, Lcom/xueqiu/android/common/g;->a(Lcom/xueqiu/android/common/g;)Lcom/xueqiu/android/common/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/h;->a(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method
