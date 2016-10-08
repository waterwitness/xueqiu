.class final Lcom/xueqiu/android/community/WriteStatusActivity$20;
.super Lcom/xueqiu/android/base/b/p;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1118
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1114
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 2122
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->r(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->r(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    .line 2124
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->I(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    .line 2125
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->d(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z

    .line 2126
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->t(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 2126
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->r(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    .line 2127
    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->r(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->J(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2129
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->K(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "\u6233\u8fd9\u91cc\u5411%s\u53d1\u7ea2\u5305\u63d0\u95ee"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    .line 2130
    invoke-static {v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->r(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 2129
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    .line 2132
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$20;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->J(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
