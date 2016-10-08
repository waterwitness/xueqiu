.class final Lcom/xueqiu/android/common/SearchNameCardActivity$1;
.super Ljava/lang/Object;
.source "SearchNameCardActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/SearchNameCardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/SearchNameCardActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/SearchNameCardActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$1;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 69
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$1;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->a(Lcom/xueqiu/android/common/SearchNameCardActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$1;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->a(Lcom/xueqiu/android/common/SearchNameCardActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$1;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/SearchNameCardActivity;->a(Lcom/xueqiu/android/common/SearchNameCardActivity;Ljava/lang/String;)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$1;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->a(Lcom/xueqiu/android/common/SearchNameCardActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
