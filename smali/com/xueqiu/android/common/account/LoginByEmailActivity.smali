.class public Lcom/xueqiu/android/common/account/LoginByEmailActivity;
.super Lcom/xueqiu/android/common/b;
.source "LoginByEmailActivity.java"


# instance fields
.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/LoginByEmailActivity;)V
    .locals 5

    .prologue
    .line 40
    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    const v0, 0x7f070131

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1104
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    const v0, 0x7f070259

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1106
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 1107
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1109
    const v3, 0x7f070216

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 1180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    .line 1110
    new-instance v4, Lcom/xueqiu/android/common/account/LoginByEmailActivity$4;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity$4;-><init>(Lcom/xueqiu/android/common/account/LoginByEmailActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/LoginByEmailActivity;Lcom/xueqiu/android/common/model/LoginResult;)V
    .locals 8

    .prologue
    .line 2130
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 2131
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getExpiresIn()J

    move-result-wide v2

    .line 2132
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 2133
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    .line 2135
    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    .line 2136
    new-instance v5, Lcom/xueqiu/android/community/model/UserLogonData;

    invoke-direct {v5}, Lcom/xueqiu/android/community/model/UserLogonData;-><init>()V

    .line 2137
    invoke-virtual {v5, v0}, Lcom/xueqiu/android/community/model/UserLogonData;->setAccessToken(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {v5, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setRefreshToken(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v5, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setExpiresInByInMillis(J)V

    .line 2140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setGetTokenTime(J)V

    .line 2141
    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setUserId(J)V

    .line 2142
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/community/model/UserLogonData;->setAnonymousUser(Z)V

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2143
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/base/t;->a(Lcom/xueqiu/android/community/model/UserLogonData;)V

    .line 2145
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2147
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->a()V

    .line 2149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2150
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2151
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2152
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->finish()V

    .line 40
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 50
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->setTheme(I)V

    .line 52
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->setContentView(I)V

    .line 1062
    const v0, 0x7f0e00bb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->j:Landroid/widget/EditText;

    .line 1063
    const v0, 0x7f0e00be

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->k:Landroid/widget/EditText;

    .line 1065
    const v0, 0x7f0e00bf

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1066
    new-instance v1, Lcom/xueqiu/android/common/account/LoginByEmailActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity$1;-><init>(Lcom/xueqiu/android/common/account/LoginByEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/LoginByEmailActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity$2;-><init>(Lcom/xueqiu/android/common/account/LoginByEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1082
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->j:Landroid/widget/EditText;

    const v1, 0x7f070244

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1083
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1084
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->k:Landroid/widget/EditText;

    const v1, 0x7f070214

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1085
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginByEmailActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity$3;-><init>(Lcom/xueqiu/android/common/account/LoginByEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1096
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1097
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->j:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 57
    const-string v0, "\u90ae\u7bb1\u767b\u5f55"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
