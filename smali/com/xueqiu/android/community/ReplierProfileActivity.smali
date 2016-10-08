.class public Lcom/xueqiu/android/community/ReplierProfileActivity;
.super Lcom/xueqiu/android/base/j;
.source "ReplierProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xueqiu/android/community/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/j",
        "<",
        "Lcom/xueqiu/android/community/d/b;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/xueqiu/android/community/b/f;"
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Lcom/d/a/b/f;

.field private C:Landroid/widget/RelativeLayout;

.field private D:J

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:F

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Landroid/widget/RelativeLayout;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/RelativeLayout;

.field private N:Lcom/d/a/b/d;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/EditText;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/xueqiu/android/community/ReplierProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/community/ReplierProfileActivity;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const v1, 0x7f020208

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/xueqiu/android/base/j;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->F:Z

    .line 91
    iput-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->H:Z

    .line 93
    iput-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->I:Z

    .line 101
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 104
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x428c0000    # 70.0f

    .line 105
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 2445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 105
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->N:Lcom/d/a/b/d;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/ReplierProfileActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(F)V
    .locals 5

    .prologue
    .line 270
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 273
    const v0, 0x7f07020b

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 274
    return-void
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/xueqiu/android/community/ReplierProfileActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 5

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/GuideTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v1, "extra_which_view"

    sget-object v2, Lcom/xueqiu/android/common/model/GuideTutorialType;->PAY_ASK_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    const-string v1, "extra_view_click_position"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0e0253

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/ReplierProfileActivity;->overridePendingTransition(II)V

    .line 162
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    .prologue
    .line 254
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->G:F

    .line 256
    iget-object v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public final a(Lcom/xueqiu/android/community/model/User;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 235
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->E:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->B:Lcom/d/a/b/f;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->q:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->N:Lcom/d/a/b/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 250
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(ZLcom/xueqiu/android/community/model/UserVerifyType;)V
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->A:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/UserVerifyType;->iconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    return-void

    .line 265
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final synthetic d()Lcom/xueqiu/android/base/c;
    .locals 4

    .prologue
    .line 43
    .line 6218
    new-instance v0, Lcom/xueqiu/android/community/d/b;

    iget-wide v2, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->D:J

    invoke-direct {v0, p0, v2, v3}, Lcom/xueqiu/android/community/d/b;-><init>(Lcom/xueqiu/android/community/b/f;J)V

    .line 43
    return-object v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->setTheme(I)V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->e()V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->u:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->v:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f040016

    const v7, 0x7f040015

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0126

    if-ne v0, v1, :cond_7

    .line 280
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    .line 281
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->G:F

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->b(F)V

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->G:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 286
    iget v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->G:F

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->b(F)V

    goto :goto_0

    .line 291
    :cond_3
    iget-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->F:Z

    if-eqz v0, :cond_4

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .line 297
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 298
    const-string v0, "extra_user_selected"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 302
    sget-object v3, Lcom/xueqiu/android/community/ReplierProfileActivity;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onClick amount = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "extra_amount"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 304
    const-string v0, "user_id"

    iget-wide v4, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->D:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "user_name"

    iget-object v3, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->E:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "from_user_profile"

    iget-boolean v3, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->F:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    const-string v0, "extra_write_type"

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string v3, "is_verified_realname"

    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/community/d/b;

    .line 4071
    iget-boolean v0, v0, Lcom/xueqiu/android/community/d/b;->a:Z

    .line 308
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 311
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v0, 0xc1d

    invoke-direct {v2, v0, v6}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 313
    const-string v3, "certified_status"

    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/community/d/b;

    .line 5071
    iget-boolean v0, v0, Lcom/xueqiu/android/community/d/b;->a:Z

    .line 313
    if-eqz v0, :cond_5

    const-string v0, "true"

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 316
    iget-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->F:Z

    if-eqz v0, :cond_6

    .line 317
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/ReplierProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 318
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->finish()V

    .line 319
    invoke-virtual {p0, v8, v7}, Lcom/xueqiu/android/community/ReplierProfileActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 295
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, v0

    goto/16 :goto_1

    .line 313
    :cond_5
    const-string v0, "false"

    goto :goto_2

    .line 321
    :cond_6
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/ReplierProfileActivity;->setResult(ILandroid/content/Intent;)V

    .line 322
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->finish()V

    .line 323
    iget-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->I:Z

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0, v8, v7}, Lcom/xueqiu/android/community/ReplierProfileActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 327
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e011a

    if-ne v0, v1, :cond_8

    .line 328
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 329
    iget-object v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 330
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 332
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0125

    if-ne v0, v1, :cond_9

    .line 333
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 334
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e026c

    if-ne v0, v1, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onCreate(Landroid/os/Bundle;)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 111
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->D:J

    .line 113
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_user_profile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->F:Z

    .line 114
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_show_hint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->H:Z

    .line 115
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "to_pick_user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->I:Z

    .line 116
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_check_show_hint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->J:Z

    .line 118
    :cond_0
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->setContentView(I)V

    .line 3130
    const v0, 0x7f0e026b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->M:Landroid/widget/RelativeLayout;

    .line 3131
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3132
    const v0, 0x7f0e026c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->K:Landroid/widget/RelativeLayout;

    .line 3133
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3134
    const v0, 0x7f0e026e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->L:Landroid/widget/TextView;

    .line 3135
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070261

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3165
    const v0, 0x7f0e011a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->C:Landroid/widget/RelativeLayout;

    .line 3166
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3167
    const v0, 0x7f0e011c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->q:Landroid/widget/ImageView;

    .line 3168
    const v0, 0x7f0e011e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->A:Landroid/widget/ImageView;

    .line 3169
    const v0, 0x7f0e011d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->r:Landroid/widget/TextView;

    .line 3170
    const v0, 0x7f0e011f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->s:Landroid/widget/TextView;

    .line 3171
    const v0, 0x7f0e0120

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->t:Landroid/widget/TextView;

    .line 3173
    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->u:Landroid/widget/LinearLayout;

    .line 3174
    const v0, 0x7f0e0123

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->v:Landroid/widget/LinearLayout;

    .line 3175
    const v0, 0x7f0e0124

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->w:Landroid/widget/LinearLayout;

    .line 3177
    const v0, 0x7f0e0122

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->x:Landroid/widget/TextView;

    .line 3178
    const v0, 0x7f0e0125

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    .line 3179
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3180
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/community/ReplierProfileActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/ReplierProfileActivity$1;-><init>(Lcom/xueqiu/android/community/ReplierProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3211
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3212
    const v0, 0x7f0e0126

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->z:Landroid/widget/TextView;

    .line 3213
    iget-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->B:Lcom/d/a/b/f;

    .line 123
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xc24

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 125
    const-string v1, "target_id"

    iget-wide v2, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->D:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onResume()V

    .line 141
    iget-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->H:Z

    if-eqz v0, :cond_0

    .line 142
    iput-boolean v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->H:Z

    .line 143
    invoke-direct {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->l()V

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->J:Z

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "pay_ask_first_in"

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    if-nez v0, :cond_1

    .line 149
    iput-boolean v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity;->J:Z

    .line 150
    invoke-direct {p0}, Lcom/xueqiu/android/community/ReplierProfileActivity;->l()V

    .line 151
    const-string v0, "pay_ask_first_in"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 154
    :cond_1
    return-void
.end method
