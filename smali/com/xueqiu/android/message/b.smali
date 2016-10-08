.class public final Lcom/xueqiu/android/message/b;
.super Ljava/lang/Object;
.source "IMGroupUtil.java"


# direct methods
.method public static a(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const v1, 0x7f020489

    .line 86
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v4

    .line 87
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 3270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 4248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 4293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 91
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v5

    move v2, v3

    .line 92
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 93
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 95
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    invoke-virtual {v4, v1, v0, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 97
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 99
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 102
    :cond_1
    return-void
.end method

.method public static publishGroup(Landroid/app/Activity;Lcom/xueqiu/android/message/model/IMGroup;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v2

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 35
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 36
    const-string v1, "\u6211\u5728\u96ea\u7403\u521b\u5efa\u4e86\u4e00\u4e2a%d\u4eba\u7fa4\u7ec4"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getLimitCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->isEmptyName()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v1, "\u201c%s\u201d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    const-string v1, "\uff0c\u6b22\u8fce\u70b9\u6b64\u7533\u8bf7\u52a0\u5165\uff1ahttp://xueqiu.com/g/%d  "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :goto_0
    new-instance v1, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v1}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2113
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 2145
    iput v6, v1, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 57
    const-string v0, "/g/%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3129
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    .line 66
    return-void

    .line 42
    :cond_1
    const-string v1, "\u6211\u5728\u96ea\u7403\u52a0\u5165\u4e86 @%s \u521b\u5efa\u7684%d\u4eba\u7fa4\u7ec4"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getMaster()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getLimitCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->isEmptyName()Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    const-string v1, "\u201c%s\u201d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_2
    const-string v1, "\uff0c\u4f60\u4e5f\u53ef\u4ee5\u70b9\u6b64\u7533\u8bf7\u52a0\u5165\uff1ahttp://xueqiu.com/g/%d  "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
