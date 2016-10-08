.class final Lcom/xueqiu/android/community/StatusDetailActivity$30;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 14

    .prologue
    const/16 v13, 0x6a4

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 1964
    if-eqz v0, :cond_2

    if-eq p1, v12, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 3152
    invoke-static {v0, v3}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 2050
    :cond_1
    :goto_0
    return v3

    .line 1973
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1977
    const-string v0, ""

    .line 1980
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v1, v0

    move v0, v3

    .line 2039
    :goto_1
    new-instance v3, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v3, v13, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2040
    if-eq p1, v12, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_c

    .line 2042
    :cond_3
    const-string v2, "tab_name"

    invoke-virtual {v3, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 11053
    :goto_2
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 2048
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    move v3, v0

    .line 2050
    goto :goto_0

    .line 1982
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->j()V

    .line 1983
    const-string v0, "\u56de\u590d\u4ed8\u8d39\u827e\u7279"

    move-object v1, v0

    move v0, v2

    .line 1985
    goto :goto_1

    .line 1987
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->j()V

    .line 1988
    const-string v0, "\u8bc4\u8bba"

    move-object v1, v0

    move v0, v2

    .line 1990
    goto :goto_1

    .line 1992
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 3569
    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$25;

    invoke-direct {v1, v0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity$25;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 3601
    iget-object v3, v0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->isFavorited()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3602
    invoke-static {}, Lcom/xueqiu/android/community/StatusDetailActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    iget-object v4, v0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    .line 4512
    iget-object v3, v3, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v3, v4, v5, v1}, Lcom/xueqiu/android/base/b/aj;->d(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 3606
    :goto_3
    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->h()Landroid/app/Dialog;

    .line 1993
    const-string v0, "\u6536\u85cf"

    move-object v1, v0

    move v0, v2

    .line 1995
    goto :goto_1

    .line 3604
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/community/StatusDetailActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    iget-object v4, v0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    .line 4532
    iget-object v3, v3, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v3, v4, v5, v1}, Lcom/xueqiu/android/base/b/aj;->e(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_3

    .line 1997
    :pswitch_4
    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 5041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 5132
    iget-object v0, v0, Lcom/xueqiu/android/base/f;->c:Lcom/xueqiu/android/common/model/ClientInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->isMonkeyTestVersion()Z

    move-result v0

    .line 4611
    if-nez v0, :cond_6

    .line 4615
    new-instance v5, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v5}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 4618
    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4619
    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4623
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "http://xueqiu.com"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Status;->getTarget()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4624
    iget-object v1, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4626
    iget-object v1, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_8

    .line 4627
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4632
    :goto_5
    const-string v8, " \u5206\u4eab\u81ea@\u96ea\u7403 "

    .line 4633
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "%1$s"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4638
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v7, v1, v3

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4641
    invoke-static {v1}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/String;)I

    move-result v9

    .line 4642
    const/16 v10, 0x8c

    if-le v9, v10, :cond_5

    .line 4644
    invoke-static {v8}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/String;)I

    move-result v1

    rsub-int v1, v1, 0x8c

    const-string v9, "%1$s"

    invoke-static {v9}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v1, v9

    .line 4643
    invoke-static {v7, v1}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4645
    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6121
    :cond_5
    iput-object v0, v5, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 6129
    iput-object v6, v5, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 7113
    iput-object v1, v5, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 4652
    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 4653
    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v0

    .line 7137
    iput-object v0, v5, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 9145
    :goto_6
    iput v3, v5, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 4665
    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 9153
    iput-object v0, v5, Lcom/xueqiu/android/common/widget/an;->a:Lcom/xueqiu/android/community/model/Status;

    .line 4666
    const/4 v0, 0x0

    invoke-static {v4, v5, v0}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    .line 1998
    :cond_6
    const-string v0, "\u5206\u4eab"

    move-object v1, v0

    move v0, v2

    .line 2000
    goto/16 :goto_1

    .line 4621
    :cond_7
    const v0, 0x7f070379

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 4629
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 4654
    :cond_9
    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 4655
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 4656
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 4657
    iget-object v0, v4, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v0

    .line 8137
    iput-object v0, v5, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    goto :goto_6

    .line 4660
    :cond_a
    invoke-virtual {v4}, Lcom/xueqiu/android/community/StatusDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9101
    iput-object v0, v5, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 4661
    const-string v0, "StatusDetailActivity"

    const-string v1, "send setThumbImage"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 10041
    :pswitch_5
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 10132
    iget-object v0, v0, Lcom/xueqiu/android/base/f;->c:Lcom/xueqiu/android/common/model/ClientInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->isMonkeyTestVersion()Z

    move-result v0

    .line 2003
    if-eqz v0, :cond_b

    move v3, v2

    .line 2004
    goto/16 :goto_0

    .line 2006
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;J)V

    .line 2007
    const-string v0, "\u4e3e\u62a5"

    move-object v1, v0

    move v0, v2

    .line 2009
    goto/16 :goto_1

    .line 2011
    :pswitch_6
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->E(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 2012
    const-string v0, "\u5220\u9664"

    move-object v1, v0

    move v0, v2

    .line 2014
    goto/16 :goto_1

    .line 2016
    :pswitch_7
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->b(Lcom/xueqiu/android/community/StatusDetailActivity;I)V

    .line 2017
    const-string v0, "\u4e3b\u9875\u7f6e\u9876"

    move-object v1, v0

    move v0, v2

    .line 2019
    goto/16 :goto_1

    .line 2021
    :pswitch_8
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->F(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 2022
    const-string v0, "\u53d6\u6d88\u7f6e\u9876"

    move-object v1, v0

    move v0, v2

    .line 2024
    goto/16 :goto_1

    .line 2026
    :pswitch_9
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0, v12}, Lcom/xueqiu/android/community/StatusDetailActivity;->b(Lcom/xueqiu/android/community/StatusDetailActivity;I)V

    .line 2027
    const-string v0, "\u7c89\u4e1d\u5934\u6761"

    move-object v1, v0

    move v0, v2

    .line 2029
    goto/16 :goto_1

    .line 2031
    :pswitch_a
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->G(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 2032
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$30;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const v1, 0x7f0702ab

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    .line 2033
    goto/16 :goto_1

    .line 2044
    :cond_c
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v2, v13, v12}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2045
    const-string v3, "option_name"

    invoke-virtual {v2, v3, v1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_2

    .line 1980
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
