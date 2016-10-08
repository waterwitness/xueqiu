.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;
.super Lrx/i;
.source "UpdateUserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 837
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 833
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1846
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->c(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1847
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1848
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->a:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1849
    array-length v1, v2

    if-ne v1, v6, :cond_2

    .line 1850
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    const-string v3, "%s%s!50x50.png"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v5}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->v(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v5, v2, v0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/model/User;->setProfileImageUrl(Ljava/lang/String;)V

    .line 1851
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    const-string v3, "%s%s!180x180.png"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v5}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->v(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v0, v2, v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/User;->setProfileLargeImageUrl(Ljava/lang/String;)V

    .line 1870
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1871
    const-string v1, "profileImageUrl"

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->updateUserInfoById(Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 1873
    const v0, 0x7f070343

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 833
    :cond_1
    return-void

    .line 1852
    :cond_2
    array-length v1, v2

    if-lez v1, :cond_0

    .line 1853
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1855
    const-string v0, "(?:ftp://|https://|http://|www\\.)[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*\\.[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*?"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1856
    const-string v0, ""

    .line 1861
    :goto_1
    const-string v5, "50x50"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1862
    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v5}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/community/model/User;->setProfileImageUrl(Ljava/lang/String;)V

    .line 1853
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1858
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->v(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1863
    :cond_5
    const-string v5, "180x180"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1864
    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v5}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/community/model/User;->setProfileLargeImageUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 841
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 842
    return-void
.end method
