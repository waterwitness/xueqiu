.class final Lcom/xueqiu/android/community/CountryCodeSelectActivity$2;
.super Ljava/lang/Object;
.source "CountryCodeSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 124
    iput-object p1, p0, Lcom/xueqiu/android/community/CountryCodeSelectActivity$2;->b:Lcom/xueqiu/android/community/CountryCodeSelectActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/CountryCodeSelectActivity$2;->a:Lcom/xueqiu/android/common/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/community/CountryCodeSelectActivity$2;->a:Lcom/xueqiu/android/common/a/a;

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/common/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/CountryCode;

    .line 128
    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 132
    const-string v2, "extra_country_name"

    iget-object v3, v0, Lcom/xueqiu/android/common/model/CountryCode;->cnName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "extra_country_code"

    iget-object v0, v0, Lcom/xueqiu/android/common/model/CountryCode;->code:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/community/CountryCodeSelectActivity$2;->b:Lcom/xueqiu/android/community/CountryCodeSelectActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/community/CountryCodeSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/community/CountryCodeSelectActivity$2;->b:Lcom/xueqiu/android/community/CountryCodeSelectActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/CountryCodeSelectActivity;->finish()V

    goto :goto_0
.end method
