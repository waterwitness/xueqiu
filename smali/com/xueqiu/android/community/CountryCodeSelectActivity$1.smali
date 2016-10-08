.class final Lcom/xueqiu/android/community/CountryCodeSelectActivity$1;
.super Ljava/lang/Object;
.source "CountryCodeSelectActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/CountryCodeSelectActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a/a;

.field final synthetic b:Lcom/xueqiu/android/community/CountryCodeSelectActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/CountryCodeSelectActivity;Lcom/xueqiu/android/common/a/a;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/xueqiu/android/community/CountryCodeSelectActivity$1;->b:Lcom/xueqiu/android/community/CountryCodeSelectActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/CountryCodeSelectActivity$1;->a:Lcom/xueqiu/android/common/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/community/CountryCodeSelectActivity$1;->a:Lcom/xueqiu/android/common/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method
