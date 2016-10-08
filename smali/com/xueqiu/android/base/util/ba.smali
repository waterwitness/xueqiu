.class public final Lcom/xueqiu/android/base/util/ba;
.super Ljava/lang/Object;
.source "UserUtil.java"


# direct methods
.method public static a(Lcom/xueqiu/android/community/model/User;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v1

    .line 90
    sget-object v2, Lcom/xueqiu/android/base/util/ba$2;->a:[I

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserVerifyType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    const v0, 0x7f020288

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 95
    :pswitch_1
    const v0, 0x7f020285

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_2
    const v0, 0x7f020284

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 101
    :pswitch_3
    const v0, 0x7f020282

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_4
    const v0, 0x7f020283

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_5
    const v0, 0x7f020287

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/bb;)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/xueqiu/android/common/g;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/g;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v1, "\u5411\u6211\u63d0\u95ee\u9700\u652f\u4ed8"

    .line 1124
    iget-object v2, v0, Lcom/xueqiu/android/common/g;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const-string v1, "\u53d6\u6d88"

    .line 1128
    iget-object v2, v0, Lcom/xueqiu/android/common/g;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const-string v1, "\u786e\u8ba4"

    .line 1132
    iget-object v2, v0, Lcom/xueqiu/android/common/g;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v1, Lcom/xueqiu/android/base/util/ba$1;

    invoke-direct {v1, v0, p1}, Lcom/xueqiu/android/base/util/ba$1;-><init>(Lcom/xueqiu/android/common/g;Lcom/xueqiu/android/base/util/bb;)V

    .line 2110
    iput-object v1, v0, Lcom/xueqiu/android/common/g;->a:Lcom/xueqiu/android/common/h;

    .line 80
    invoke-virtual {v0}, Lcom/xueqiu/android/common/g;->show()V

    .line 81
    return-void
.end method

.method public static b(Lcom/xueqiu/android/community/model/User;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 116
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 118
    :goto_0
    if-eqz v0, :cond_1

    .line 119
    const-string v0, "\u6211"

    .line 129
    :goto_1
    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->isMale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const-string v0, "\u4ed6"

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->isFemale()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    const-string v0, "\u5979"

    goto :goto_1

    .line 126
    :cond_3
    const-string v0, "ta"

    goto :goto_1
.end method
