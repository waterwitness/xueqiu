.class public final Lcom/xueqiu/android/message/a/g;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/d;


# direct methods
.method protected constructor <init>(Lcom/xueqiu/android/message/a/d;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/xueqiu/android/message/a/g;->a:Lcom/xueqiu/android/message/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.chat.hideKeyboard"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 908
    return-void
.end method
