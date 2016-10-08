.class final Lcom/xueqiu/android/message/TalkSearchActivity$1;
.super Ljava/lang/Object;
.source "TalkSearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkSearchActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$1;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 88
    sget-object v1, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/message/TalkSearchActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/message/TalkSearchActivity$1$1;-><init>(Lcom/xueqiu/android/message/TalkSearchActivity$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 94
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
