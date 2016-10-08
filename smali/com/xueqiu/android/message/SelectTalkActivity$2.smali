.class final Lcom/xueqiu/android/message/SelectTalkActivity$2;
.super Ljava/lang/Object;
.source "SelectTalkActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/SelectTalkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/SelectTalkActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/SelectTalkActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/xueqiu/android/message/SelectTalkActivity$2;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity$2;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/SelectTalkActivity;->a(Lcom/xueqiu/android/message/SelectTalkActivity;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method
