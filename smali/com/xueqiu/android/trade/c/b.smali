.class public final Lcom/xueqiu/android/trade/c/b;
.super Lcom/xueqiu/android/common/widget/f;
.source "InputPasswordDialog.java"


# static fields
.field private static o:J


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/app/Dialog;

.field h:Lcom/xueqiu/android/common/b;

.field public i:Lcom/xueqiu/android/trade/c/d;

.field public j:Lcom/xueqiu/android/trade/c/c;

.field k:Lcom/xueqiu/android/common/widget/p;

.field l:Lcom/xueqiu/android/trade/model/TradeAccount;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/xueqiu/android/trade/view/a;

.field private p:Z

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/TextView;

.field private v:Ljava/lang/String;

.field private w:Lcom/xueqiu/android/base/b/ai;

.field private x:Lcom/xueqiu/android/trade/e;

.field private y:I

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xueqiu/android/trade/c/b;->o:J

    return-void
.end method

.method private constructor <init>(Lcom/xueqiu/android/common/b;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/f;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v7, p0, Lcom/xueqiu/android/trade/c/b;->p:Z

    .line 97
    iput-object v3, p0, Lcom/xueqiu/android/trade/c/b;->i:Lcom/xueqiu/android/trade/c/d;

    .line 99
    iput-object v3, p0, Lcom/xueqiu/android/trade/c/b;->j:Lcom/xueqiu/android/trade/c/c;

    .line 101
    iput-object v3, p0, Lcom/xueqiu/android/trade/c/b;->x:Lcom/xueqiu/android/trade/e;

    .line 561
    iput-object v3, p0, Lcom/xueqiu/android/trade/c/b;->D:Landroid/app/Dialog;

    .line 131
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    .line 132
    const-string v0, "arg_broker"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "DYZQ"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iput v6, p0, Lcom/xueqiu/android/trade/c/b;->y:I

    .line 141
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->w:Lcom/xueqiu/android/base/b/ai;

    .line 142
    const-string v0, "arg_need_verify_code"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/b;->p:Z

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0301e5

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 145
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 146
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 147
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 148
    invoke-static {v5}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 149
    invoke-static {v5}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 150
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    const v0, 0x7f0e04ec

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->z:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0e04ed

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->A:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0e04eb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->B:Landroid/widget/LinearLayout;

    .line 155
    const v0, 0x7f0e04ee

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->C:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0e052d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    .line 157
    const v0, 0x7f0e00f1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->r:Landroid/widget/EditText;

    .line 158
    const v0, 0x7f0e0530

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->s:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0e052f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->t:Landroid/view/View;

    .line 160
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/b;->t:Landroid/view/View;

    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/b;->p:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/b;->p:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/b;->d()V

    .line 165
    :cond_1
    const v0, 0x7f0e01a7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->u:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const-string v3, "trade_write_token_expires"

    sget-object v4, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 167
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/b;->u:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->fromValue(I)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->lableResId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    new-instance v3, Lcom/xueqiu/android/trade/c/b$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/b$1;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 181
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/b;->c()V

    .line 182
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->B:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/xueqiu/android/trade/c/b$6;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/b$6;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget v0, p0, Lcom/xueqiu/android/trade/c/b;->y:I

    if-ne v0, v6, :cond_4

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const v3, 0x7f070495

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 198
    :goto_3
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v3, Lcom/xueqiu/android/trade/c/b$7;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/b$7;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    .line 3094
    iput-object v3, p0, Lcom/xueqiu/android/common/widget/f;->b:Lcom/xueqiu/android/common/widget/g;

    .line 218
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/b;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/view/View;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v7}, Lcom/xueqiu/android/common/widget/f;->a(Z)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const v3, 0x7f070070

    .line 221
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const v3, 0x7f0700b1

    .line 222
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 3209
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->e:Landroid/widget/TextView;

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/trade/c/b$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/b$8;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->u:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/c/b$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/b$9;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->s:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/trade/c/b$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/b$10;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3303
    new-instance v0, Lcom/xueqiu/android/common/widget/p;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/p;-><init>(Landroid/app/Activity;ILandroid/widget/EditText;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->k:Lcom/xueqiu/android/common/widget/p;

    .line 3304
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->k:Lcom/xueqiu/android/common/widget/p;

    const v0, 0x7f0e0336

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 4360
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/p;->j:Landroid/view/ViewGroup;

    .line 3305
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->k:Lcom/xueqiu/android/common/widget/p;

    new-instance v1, Lcom/xueqiu/android/trade/c/b$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/b$11;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    .line 5239
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/p;->i:Lcom/xueqiu/android/common/widget/q;

    .line 3333
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/trade/c/b$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/b$12;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3346
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->k:Lcom/xueqiu/android/common/widget/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/p;->a()V

    .line 3347
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->r:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/trade/c/b$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/b$13;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 139
    :cond_2
    iput v7, p0, Lcom/xueqiu/android/trade/c/b;->y:I

    goto/16 :goto_1

    .line 160
    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_2

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const v3, 0x7f070494

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/b;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/xueqiu/android/trade/c/b;->y:I

    return p1
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 63
    sput-wide p0, Lcom/xueqiu/android/trade/c/b;->o:J

    return-wide p0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/b;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/model/TradeAccount;Z)Lcom/xueqiu/android/trade/c/b;
    .locals 6

    .prologue
    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string v1, "arg_broker"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/xueqiu/android/trade/c/b;->o:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 122
    const/4 p2, 0x1

    .line 125
    :cond_0
    const-string v1, "arg_need_verify_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    new-instance v1, Lcom/xueqiu/android/trade/c/b;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/trade/c/b;-><init>(Lcom/xueqiu/android/common/b;Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/b;Lcom/xueqiu/android/trade/e;)Lcom/xueqiu/android/trade/e;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b;->x:Lcom/xueqiu/android/trade/e;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/b;Lcom/xueqiu/android/trade/model/TradeAccount;)Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/b;Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8425
    if-eqz p1, :cond_0

    const-string v0, "content"

    .line 8426
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8427
    :cond_0
    :goto_0
    return-void

    .line 8430
    :cond_1
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 8431
    const-string v1, "encode"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 8432
    const-string v2, "content_hash"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/trade/c/b;->v:Ljava/lang/String;

    .line 8434
    const-string v2, "base64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8435
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 8436
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8437
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 63
    .line 9515
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->w:Lcom/xueqiu/android/base/b/ai;

    new-instance v1, Lcom/xueqiu/android/trade/c/b$5;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/trade/c/b$5;-><init>(Lcom/xueqiu/android/trade/c/b;Ljava/lang/String;)V

    .line 9620
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    .line 10202
    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 63
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/b;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 63
    .line 5558
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const v1, 0x7f0702fb

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5564
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->D:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 5565
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->D:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5567
    :cond_0
    new-instance v1, Lcom/xueqiu/android/common/widget/ae;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v2, v0}, Lcom/xueqiu/android/common/widget/ae;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/b;->D:Landroid/app/Dialog;

    .line 5568
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5445
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getOauthConfig()Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    move-result-object v0

    .line 5447
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 5448
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5450
    :cond_1
    new-instance v7, Lcom/xueqiu/android/trade/c/b$4;

    invoke-direct {v7, p0}, Lcom/xueqiu/android/trade/c/b$4;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    .line 5497
    :try_start_0
    iget v1, p0, Lcom/xueqiu/android/trade/c/b;->y:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 5498
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5499
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b;->w:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->getOauthRefreshTokenUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/b;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 5500
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getOauthParams()Ljava/util/Map;

    move-result-object v6

    .line 5599
    iget-object v0, v2, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    .line 6147
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 5510
    :cond_2
    :goto_0
    return-void

    .line 5501
    :cond_3
    iget v1, p0, Lcom/xueqiu/android/trade/c/b;->y:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5502
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5503
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/b;->w:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->getOauthRefreshTokenUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/b;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 5504
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getOauthParams()Ljava/util/Map;

    move-result-object v6

    .line 6608
    iget-object v0, v3, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    .line 7138
    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5507
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5509
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 290
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->C:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderLogo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_1
    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->C:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/widget/p;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->k:Lcom/xueqiu/android/common/widget/p;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->w:Lcom/xueqiu/android/base/b/ai;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getOauthConfig()Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->getOauthCaptchaUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/b$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/b$3;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ai;->h(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 422
    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/b;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 8584
    const-string v0, "72101"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "79105"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 63
    goto :goto_0
.end method

.method static synthetic f(Lcom/xueqiu/android/trade/c/b;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/xueqiu/android/trade/c/b;->y:I

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/e;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->x:Lcom/xueqiu/android/trade/e;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/trade/c/b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/b;->d()V

    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/trade/c/b;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/trade/c/b;)V
    .locals 3

    .prologue
    const v2, 0x7f0e0338

    .line 63
    .line 7395
    iget v0, p0, Lcom/xueqiu/android/trade/c/b;->y:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7396
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const v1, 0x7f070494

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 8263
    :goto_0
    iput-object v1, p0, Lcom/xueqiu/android/common/widget/f;->c:Ljava/lang/String;

    .line 8264
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8267
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8268
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/f;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8269
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8270
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7401
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 63
    return-void

    .line 7398
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const v1, 0x7f070495

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 8272
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic l(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/b;->c()V

    return-void
.end method

.method static synthetic n(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/c/c;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->j:Lcom/xueqiu/android/trade/c/c;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/trade/c/b;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/b;->p:Z

    return v0
.end method

.method static synthetic p(Lcom/xueqiu/android/trade/c/b;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/b;->p:Z

    return v0
.end method

.method static synthetic q(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/c/d;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->i:Lcom/xueqiu/android/trade/c/d;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->D:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/b;->D:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final cancel()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->i:Lcom/xueqiu/android/trade/c/d;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->i:Lcom/xueqiu/android/trade/c/d;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/c/d;->b()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->k:Lcom/xueqiu/android/common/widget/p;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->k:Lcom/xueqiu/android/common/widget/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/p;->b()V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    const v1, 0x7f070540

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 286
    return-void
.end method
