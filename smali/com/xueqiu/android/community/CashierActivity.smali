.class public Lcom/xueqiu/android/community/CashierActivity;
.super Lcom/xueqiu/android/common/b;
.source "CashierActivity.java"


# instance fields
.field public j:Z

.field private k:Landroid/app/AlertDialog;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Lcom/xueqiu/android/base/h5/c;

.field private t:Ljava/lang/String;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/xueqiu/android/community/CashierActivity;->q:Z

    .line 64
    iput-boolean v0, p0, Lcom/xueqiu/android/community/CashierActivity;->r:Z

    .line 70
    iput-boolean v0, p0, Lcom/xueqiu/android/community/CashierActivity;->j:Z

    .line 72
    const-string v0, "\u73b0\u91d1\u6253\u8d4f"

    iput-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/CashierActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/CashierActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/CashierActivity;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/xueqiu/android/community/CashierActivity;->q:Z

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/CashierActivity;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/xueqiu/android/community/CashierActivity;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/CashierActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 187
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/CashierActivity;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->finish()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/community/CashierActivity;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/xueqiu/android/community/CashierActivity;->r:Z

    return v0
.end method


# virtual methods
.method protected final e()V
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CashierActivity;->setTheme(I)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method public finish()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    const-string v1, "result_pay_state"

    iget-boolean v2, p0, Lcom/xueqiu/android/community/CashierActivity;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/community/CashierActivity;->setResult(ILandroid/content/Intent;)V

    .line 218
    iget-boolean v0, p0, Lcom/xueqiu/android/community/CashierActivity;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/community/CashierActivity;->j:Z

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->finish()V

    .line 220
    const v0, 0x7f040007

    const v1, 0x7f040013

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/CashierActivity;->overridePendingTransition(II)V

    .line 246
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->k:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 225
    iget-boolean v0, p0, Lcom/xueqiu/android/community/CashierActivity;->r:Z

    if-eqz v0, :cond_3

    const-string v0, "\u6253\u8d4f"

    .line 226
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    .line 227
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "\u8981\u653e\u5f03\u672c\u6b21%s\u5417\uff1f"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 228
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "\u7ee7\u7eed%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 229
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u653e\u5f03"

    new-instance v2, Lcom/xueqiu/android/community/CashierActivity$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/CashierActivity$3;-><init>(Lcom/xueqiu/android/community/CashierActivity;)V

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->k:Landroid/app/AlertDialog;

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 225
    :cond_3
    const-string v0, "\u652f\u4ed8"

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 210
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CashierActivity;->setContentView(I)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 102
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CashierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->u:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0e00ff

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CashierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->v:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->p:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->p:Ljava/lang/String;

    const-string v1, "type_reward_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->p:Ljava/lang/String;

    const-string v1, "type_reward_comment"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/CashierActivity;->r:Z

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    iget-boolean v1, p0, Lcom/xueqiu/android/community/CashierActivity;->r:Z

    if-nez v1, :cond_4

    .line 117
    const v1, 0x7f0e00fe

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/CashierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    iget-object v1, p0, Lcom/xueqiu/android/community/CashierActivity;->v:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v1, p0, Lcom/xueqiu/android/community/CashierActivity;->u:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    const-string v0, ""

    .line 127
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_status_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "extra_comment_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 129
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "extra_mentions"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "extra_mentions_amount"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v8, "extra_content"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v9, "extra_forward"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 134
    iget-object v10, p0, Lcom/xueqiu/android/community/CashierActivity;->p:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 154
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/community/CashierActivity;->t:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/CashierActivity;->c(Ljava/lang/String;)V

    .line 156
    if-nez p1, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CashierActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 158
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/h5/c;->a(Ljava/lang/String;Lcom/xueqiu/android/base/h5/b;Z)Lcom/xueqiu/android/base/h5/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->s:Lcom/xueqiu/android/base/h5/c;

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->s:Lcom/xueqiu/android/base/h5/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h5/c;->e_(Z)V

    .line 160
    const v0, 0x7f0e0100

    iget-object v2, p0, Lcom/xueqiu/android/community/CashierActivity;->s:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 161
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 164
    :cond_3
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CashierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/CashierActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/CashierActivity$1;-><init>(Lcom/xueqiu/android/community/CashierActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xueqiu.android.action.paySuccess"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/CashierActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/CashierActivity$2;-><init>(Lcom/xueqiu/android/community/CashierActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CashierActivity;->a(Lrx/j;)V

    .line 182
    return-void

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/community/CashierActivity;->v:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v1, p0, Lcom/xueqiu/android/community/CashierActivity;->u:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 134
    :sswitch_0
    const-string v11, "type_reward_status"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v11, "type_reward_comment"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v11, "type_paid_mention_status"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v11, "type_paid_mention_comment"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v11, "type_paid_mention_repost"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x4

    goto/16 :goto_1

    .line 1077
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "http://xueqiu.com/c/reward?sid=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1081
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "http://xueqiu.com/c/reward?cid=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1085
    :pswitch_2
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "http://xueqiu.com/c/mention?type=status&content=%s&mentions=%s&mentions_amount=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Lcom/xueqiu/android/community/CashierActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const/4 v3, 0x2

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "\u5411ta\u652f\u4ed8"

    iput-object v1, p0, Lcom/xueqiu/android/community/CashierActivity;->t:Ljava/lang/String;

    goto/16 :goto_2

    .line 1089
    :pswitch_3
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "http://xueqiu.com/c/mention?type=comment&sid=%d&cid=%d&content=%s&mentions=%s&mentions_amount=%s&forward=%d"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v11

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v2, 0x2

    invoke-static {v8}, Lcom/xueqiu/android/community/CashierActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v2, 0x3

    aput-object v6, v10, v2

    const/4 v2, 0x4

    aput-object v7, v10, v2

    const/4 v2, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v0, v1, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "\u5411ta\u652f\u4ed8"

    iput-object v1, p0, Lcom/xueqiu/android/community/CashierActivity;->t:Ljava/lang/String;

    goto/16 :goto_2

    .line 1093
    :pswitch_4
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "http://xueqiu.com/c/mention?type=repost&sid=%d&content=%s&mentions=%s&mentions_amount=%s&forward=%d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-static {v8}, Lcom/xueqiu/android/community/CashierActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object v6, v4, v2

    const/4 v2, 0x3

    aput-object v7, v4, v2

    const/4 v2, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "\u5411ta\u652f\u4ed8"

    iput-object v1, p0, Lcom/xueqiu/android/community/CashierActivity;->t:Ljava/lang/String;

    goto/16 :goto_2

    .line 113
    :array_0
    .array-data 4
        0x7f0100d7
        0x7f0100da
    .end array-data

    .line 134
    :sswitch_data_0
    .sparse-switch
        -0x61ac916a -> :sswitch_4
        -0x5f2b16cb -> :sswitch_2
        -0x1f37770c -> :sswitch_1
        0x2381fd7c -> :sswitch_3
        0x33530ebd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->s:Lcom/xueqiu/android/base/h5/c;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity;->s:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->z()V

    .line 197
    :cond_0
    return-void
.end method
