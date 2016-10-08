.class final Lcom/xueqiu/android/common/search/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/SearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 504
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/SearchActivity;->c(Lcom/xueqiu/android/common/search/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 508
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 508
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 509
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-direct {v1}, Lcom/xueqiu/android/common/model/PagedGroup;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/r;->a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V

    .line 510
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    const v1, 0x7f0e0369

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 514
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/r;->a()Z

    .line 516
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 518
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 519
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$3;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;I)I

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method
