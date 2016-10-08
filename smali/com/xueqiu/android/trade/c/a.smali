.class public final Lcom/xueqiu/android/trade/c/a;
.super Lcom/xueqiu/android/common/c;
.source "BindBrokerFragment.java"


# instance fields
.field private a:Lcom/xueqiu/android/trade/model/TradeAccount;

.field private ak:Ljava/lang/String;

.field private al:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/trade/c/a;->al:I

    return-void
.end method

.method public static a(Lcom/xueqiu/android/trade/model/TradeAccount;I)Lcom/xueqiu/android/trade/c/a;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/xueqiu/android/trade/c/a;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/c/a;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    const-string v2, "arg_broker"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    const-string v2, "arg_intent_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/a;->e(Landroid/os/Bundle;)V

    .line 81
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/a;)Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/a;Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19190
    if-eqz p1, :cond_0

    const-string v0, "content"

    .line 19191
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19192
    :cond_0
    :goto_0
    return-void

    .line 19195
    :cond_1
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 19196
    const-string v1, "encode"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 19197
    const-string v2, "content_hash"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/trade/c/a;->ak:Ljava/lang/String;

    .line 19199
    const-string v2, "base64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19200
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 19201
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19202
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/a;Lcom/xueqiu/android/base/a/a;)V
    .locals 2

    .prologue
    .line 19337
    const-string v0, "72102"

    .line 20064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 19337
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "72103"

    .line 21064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 19338
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->e:Landroid/view/View;

    .line 19339
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 19340
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/a;->u()V

    .line 49
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    .line 21275
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/a;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/a$8;

    invoke-direct {v1, p0, p0, p1}, Lcom/xueqiu/android/trade/c/a$8;-><init>(Lcom/xueqiu/android/trade/c/a;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    .line 21616
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    .line 22191
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 21322
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/a;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 49
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/trade/c/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/trade/c/a;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 49
    .line 17207
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getOauthConfig()Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    move-result-object v0

    .line 17208
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17209
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17211
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 17212
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17214
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/a;->y()Landroid/app/Dialog;

    .line 17217
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/a;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v9

    .line 17218
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->getOauthAuthorizeUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/a;->ak:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 17223
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getOauthParams()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lcom/xueqiu/android/trade/c/a$7;

    invoke-direct {v7, p0, p0}, Lcom/xueqiu/android/trade/c/a$7;-><init>(Lcom/xueqiu/android/trade/c/a;Lcom/xueqiu/android/base/b/q;)V

    .line 17590
    iget-object v0, v9, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 17271
    :goto_1
    invoke-virtual {p0, v8}, Lcom/xueqiu/android/trade/c/a;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 49
    return-void

    .line 17266
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 17268
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object v4, v8

    goto :goto_0
.end method

.method static synthetic g(Lcom/xueqiu/android/trade/c/a;)V
    .locals 3

    .prologue
    .line 49
    .line 18167
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->d:Landroid/widget/EditText;

    .line 18168
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 18168
    if-nez v0, :cond_0

    .line 18169
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18172
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/a;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getOauthConfig()Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->getOauthCaptchaUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/a$6;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/trade/c/a$6;-><init>(Lcom/xueqiu/android/trade/c/a;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ai;->h(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 18186
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/a;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 49
    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/trade/c/a;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/a;->u()V

    return-void
.end method

.method static synthetic i(Lcom/xueqiu/android/trade/c/a;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/xueqiu/android/trade/c/a;->al:I

    return v0
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 346
    const v1, 0x7f0e052e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f030156

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f07045c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/a;->d(I)V

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 88
    const-string v1, "arg_broker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 89
    const-string v1, "arg_intent_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/c/a;->al:I

    .line 90
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 100
    const v1, 0x7f0e052c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/a;->b:Landroid/widget/EditText;

    .line 6240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 101
    const v1, 0x7f0e052d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/a;->c:Landroid/widget/EditText;

    .line 7240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 102
    const v1, 0x7f0e052f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/a;->e:Landroid/view/View;

    .line 8240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 103
    const v1, 0x7f0e00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/a;->d:Landroid/widget/EditText;

    .line 9240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 104
    const v1, 0x7f0e0530

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/a;->f:Landroid/widget/ImageView;

    .line 10240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 105
    const v1, 0x7f0e039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/a;->g:Landroid/widget/ImageView;

    .line 11240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 106
    const v1, 0x7f0e00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/a;->h:Landroid/widget/Button;

    .line 12240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 107
    const v1, 0x7f0e0531

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 13240
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 108
    const v2, 0x7f0e0532

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/xueqiu/android/trade/c/a$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/a$1;-><init>(Lcom/xueqiu/android/trade/c/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v0, Lcom/xueqiu/android/trade/c/a$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/a$2;-><init>(Lcom/xueqiu/android/trade/c/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 122
    const v1, 0x7f0e039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 125
    const v1, 0x7f0e052b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getOauthConfig()Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->getAccountLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->b:Landroid/widget/EditText;

    const v1, 0x7f070199

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeBroker;->getOauthConfig()Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->getAccountLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/trade/c/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->h:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/trade/c/a$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/a$3;-><init>(Lcom/xueqiu/android/trade/c/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/trade/c/a$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/a$4;-><init>(Lcom/xueqiu/android/trade/c/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/trade/c/a$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/a$5;-><init>(Lcom/xueqiu/android/trade/c/a;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15326
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    .line 15327
    new-instance v1, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/o;-><init>()V

    .line 15328
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderLogo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 164
    return-void
.end method
