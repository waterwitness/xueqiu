.class public Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;
.super Lcom/xueqiu/android/common/b;
.source "InvestmentCalEventAddActivity.java"


# instance fields
.field private A:Lcom/xueqiu/android/common/a/k;

.field private B:Landroid/app/ProgressDialog;

.field private C:Z

.field private D:Landroid/view/View$OnClickListener;

.field private E:Lcom/xueqiu/android/base/b/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/content/Context;

.field k:I

.field p:Landroid/content/DialogInterface$OnClickListener;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

.field private w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

.field private x:Z

.field private y:Landroid/app/AlertDialog$Builder;

.field private z:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->t:Ljava/util/ArrayList;

    .line 73
    iput-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->u:Ljava/util/ArrayList;

    .line 74
    iput-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->v:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 76
    iput-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->x:Z

    .line 81
    iput-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->y:Landroid/app/AlertDialog$Builder;

    .line 82
    iput-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->z:Landroid/app/Dialog;

    .line 89
    iput-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->A:Lcom/xueqiu/android/common/a/k;

    .line 574
    new-instance v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    .line 925
    new-instance v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->t:Ljava/util/ArrayList;

    return-object p1
.end method

.method private static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 1147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1148
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1149
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 1150
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 1151
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    .line 1152
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    .line 1154
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1155
    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1156
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b([I)V

    return-void
.end method

.method private a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V
    .locals 18

    .prologue
    .line 322
    const v2, 0x7f0e0619

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 323
    const v3, 0x7f0e035a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 324
    const v4, 0x7f0e035c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 325
    const v5, 0x7f0e0622

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 326
    const v6, 0x7f0e0625

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 327
    const v7, 0x7f0e0628

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 328
    const v8, 0x7f0e0629

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 329
    const v9, 0x7f0e062a

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 330
    const v10, 0x7f0e062d

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 331
    const v11, 0x7f0e062e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 332
    const v11, 0x7f0e0631

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 334
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    if-nez v11, :cond_7

    const-string v11, ""

    :goto_0
    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    .line 336
    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-lez v2, :cond_0

    .line 337
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    const-string v11, "yyyy-MM-dd HH:mm"

    invoke-static {v2, v11}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    const-string v14, "yyyy-MM-dd HH:mm"

    const-string v15, "yyyy-MM-dd HH:mm"

    invoke-static {v2, v11, v14, v15}, Lcom/xueqiu/android/base/util/h;->a(Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_0
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    .line 342
    const-wide/16 v14, 0x0

    cmp-long v11, v2, v14

    if-lez v11, :cond_1

    .line 343
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {v11, v2}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    const-string v11, "yyyy-MM-dd HH:mm"

    const-string v14, "yyyy-MM-dd HH:mm"

    invoke-static {v2, v3, v11, v14}, Lcom/xueqiu/android/base/util/h;->a(Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_1
    const v2, 0x7f0e061f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 349
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 352
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    const-string v4, "Asia/Shanghai"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 353
    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    const-string v3, ""

    .line 356
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->s:Z

    if-eqz v2, :cond_a

    .line 357
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_title:Ljava/lang/String;

    .line 370
    :goto_2
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStat:Ljava/lang/String;

    invoke-static {v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mDescription:Ljava/lang/String;

    if-nez v2, :cond_d

    const-string v2, ""

    :goto_3
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_e

    const-string v2, ""

    :goto_4
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    if-eqz v2, :cond_f

    .line 379
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 381
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 382
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    .line 383
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    .line 385
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    .line 387
    move-object/from16 v0, p1

    iget v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    if-eqz v2, :cond_2

    .line 388
    const v2, 0x7f0e0633

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 390
    move-object/from16 v0, p1

    iget v4, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_2
    :goto_5
    const-string v2, "1"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mPrivacy_write:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 423
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    if-eqz v2, :cond_12

    .line 424
    const/4 v2, 0x0

    move v3, v2

    .line 439
    :goto_6
    const/4 v4, 0x0

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 442
    iget-wide v6, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 443
    iget-boolean v2, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mIsMine:Z

    if-nez v2, :cond_15

    const/4 v2, 0x1

    .line 448
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x1

    .line 449
    :goto_8
    if-nez v4, :cond_17

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    if-eqz v2, :cond_17

    :cond_4
    const/4 v2, 0x1

    .line 450
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->s:Z

    if-eqz v4, :cond_18

    .line 451
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(ZZ)V

    .line 456
    :goto_a
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 457
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    .line 458
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d([I)V

    .line 460
    :cond_6
    return-void

    .line 334
    :cond_7
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 352
    :cond_8
    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto/16 :goto_1

    :cond_9
    const-string v2, ""

    goto/16 :goto_1

    .line 358
    :cond_a
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    if-eqz v2, :cond_b

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5927\u4e8b\u4ef6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 361
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 363
    iget-wide v14, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    move-wide/from16 v16, v0

    cmp-long v5, v14, v16

    if-nez v5, :cond_c

    .line 364
    iget-object v2, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    goto/16 :goto_2

    .line 375
    :cond_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mDescription:Ljava/lang/String;

    goto/16 :goto_3

    .line 376
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mLocation:Ljava/lang/String;

    goto/16 :goto_4

    .line 392
    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 393
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 396
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 397
    const v2, 0x7f0e0630

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 398
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 399
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    .line 401
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    .line 402
    move-object/from16 v0, p1

    iget v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    if-eqz v2, :cond_2

    .line 403
    const v2, 0x7f0e0633

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 405
    move-object/from16 v0, p1

    iget v4, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 408
    :cond_10
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0e0631

    aput v4, v2, v3

    .line 409
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    .line 410
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    .line 411
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    goto/16 :goto_5

    .line 414
    :cond_11
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    .line 415
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    .line 416
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0e062b

    aput v4, v2, v3

    .line 417
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    goto/16 :goto_5

    .line 426
    :cond_12
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 427
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_6

    .line 6069
    :cond_13
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 6077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 429
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAuthor_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    .line 430
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_6

    .line 432
    :cond_14
    const/4 v2, 0x1

    move v3, v2

    goto/16 :goto_6

    .line 443
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 448
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 449
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 453
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(ZZ)V

    goto/16 :goto_a

    :cond_19
    move v2, v4

    goto/16 :goto_7

    :cond_1a
    move-object v2, v3

    goto/16 :goto_2

    .line 381
    :array_0
    .array-data 4
        0x7f0e0626
        0x7f0e062e
    .end array-data

    .line 384
    :array_1
    .array-data 4
        0x7f0e062b
        0x7f0e0631
    .end array-data

    .line 457
    :array_2
    .array-data 4
        0x7f0e0623
        0x7f0e062b
    .end array-data

    .line 400
    :array_3
    .array-data 4
        0x7f0e062b
        0x7f0e062e
        0x7f0e0631
    .end array-data

    .line 410
    :array_4
    .array-data 4
        0x7f0e062b
        0x7f0e062e
    .end array-data

    .line 414
    :array_5
    .array-data 4
        0x7f0e0634
        0x7f0e062e
        0x7f0e0631
    .end array-data
.end method

.method private a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 466
    if-nez p2, :cond_3

    .line 467
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V

    .line 475
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-ne v4, p2, :cond_2

    .line 476
    :cond_1
    const v0, 0x7f0e061f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 477
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 479
    :cond_2
    return-void

    .line 468
    :cond_3
    if-ne v3, p2, :cond_4

    .line 469
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V

    goto :goto_0

    .line 470
    :cond_4
    if-ne v4, p2, :cond_0

    .line 471
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V

    .line 472
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V

    .line 6518
    iget-object v0, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6519
    const v0, 0x7f0e062d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6520
    iget-object v1, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6521
    const v0, 0x7f0e0625

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5927\u4e8b\u4ef6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6525
    :cond_5
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 6526
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d([I)V

    .line 6528
    new-array v0, v3, [I

    const/4 v1, 0x0

    const v2, 0x7f0e0626

    aput v2, v0, v1

    .line 6529
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    goto :goto_0

    .line 6525
    nop

    :array_0
    .array-data 4
        0x7f0e0623
        0x7f0e062b
    .end array-data
.end method

.method private a(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1202
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 1203
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1206
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d([I)V

    .line 1207
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 1208
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    if-eqz p2, :cond_0

    .line 1210
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    .line 1213
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d([I)V

    .line 1214
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    .line 1215
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    .line 1216
    new-array v0, v3, [I

    const/4 v1, 0x0

    const v2, 0x7f0e0626

    aput v2, v0, v1

    .line 1217
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b([I)V

    .line 1218
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->C:Z

    goto :goto_0

    .line 1203
    :array_0
    .array-data 4
        0x7f0e0619
        0x7f0e061a
        0x7f0e061b
        0x7f0e0620
        0x7f0e0623
        0x7f0e0626
        0x7f0e0629
        0x7f0e062a
        0x7f0e062b
        0x7f0e061d
        0x7f0e061f
        0x7f0e062e
        0x7f0e0630
        0x7f0e0631
    .end array-data

    .line 1207
    :array_1
    .array-data 4
        0x7f0e061d
        0x7f0e0634
        0x7f0e0635
        0x7f0e0636
        0x7f0e062e
    .end array-data

    .line 1210
    :array_2
    .array-data 4
        0x7f0e0619
        0x7f0e061a
        0x7f0e061b
        0x7f0e0620
        0x7f0e0623
        0x7f0e0629
        0x7f0e062a
        0x7f0e062b
        0x7f0e061d
        0x7f0e061f
        0x7f0e062e
        0x7f0e0630
        0x7f0e0631
    .end array-data

    .line 1214
    :array_3
    .array-data 4
        0x7f0e061d
        0x7f0e0634
        0x7f0e0636
        0x7f0e062e
    .end array-data
.end method

.method private a([I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1120
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    array-length v3, p1

    .line 1124
    if-ne v3, v6, :cond_2

    .line 1125
    new-array v0, v6, [I

    const v1, 0x7f0100f1

    aput v1, v0, v2

    .line 1126
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1127
    aget v1, p1, v2

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1129
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1131
    if-nez v1, :cond_3

    .line 1132
    const v0, 0x7f0100f3

    .line 1138
    :goto_2
    new-array v4, v6, [I

    aput v0, v4, v2

    .line 1139
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1140
    aget v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1129
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1133
    :cond_3
    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_4

    .line 1134
    const v0, 0x7f0100ed

    goto :goto_2

    .line 1136
    :cond_4
    const v0, 0x7f0100ef

    goto :goto_2
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->B:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    .line 14023
    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 546
    const-string v0, ""

    .line 548
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 550
    const-string v2, "alert"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    const-string v2, "alert"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    const-string v0, "\u65e0"

    .line 571
    :cond_0
    :goto_0
    return-object v0

    .line 554
    :cond_1
    const-string v2, "5min"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    const-string v0, "5\u5206\u949f\u524d"

    goto :goto_0

    .line 556
    :cond_2
    const-string v2, "15min"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 557
    const-string v0, "15\u5206\u949f\u524d"

    goto :goto_0

    .line 558
    :cond_3
    const-string v2, "30min"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 559
    const-string v0, "30\u5206\u949f\u524d"

    goto :goto_0

    .line 560
    :cond_4
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 561
    const-string v0, "1\u5c0f\u65f6\u524d"

    goto :goto_0

    .line 562
    :cond_5
    const-string v2, "12"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 563
    const-string v0, "12\u5c0f\u65f6\u524d"

    goto :goto_0

    .line 564
    :cond_6
    const-string v2, "24"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const-string v0, "24\u5c0f\u65f6\u524d"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;I)V
    .locals 12

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xb

    const/4 v9, 0x5

    const/4 v4, 0x2

    const/4 v8, 0x1

    .line 9752
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 9753
    const v0, 0x7f030214

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 9754
    const v0, 0x7f0e075d

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/DateTimePicker;

    .line 9756
    const v1, 0x7f0e035a

    if-ne p1, v1, :cond_1

    .line 9757
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 9758
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v2, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 9760
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(IIIII)V

    .line 9768
    :cond_0
    :goto_0
    const v1, 0x7f0e075f

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;

    invoke-direct {v2, p0, v0, p1, v7}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/common/widget/DateTimePicker;ILandroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9799
    const v1, 0x7f0e0761

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$12;

    invoke-direct {v2, p0, v7}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$12;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9807
    const v1, 0x7f0e0760

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$13;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/common/widget/DateTimePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9814
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-boolean v1, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    if-eqz v1, :cond_2

    .line 9815
    const v1, 0x7f0e0765

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9820
    :goto_1
    invoke-virtual {v0, v8}, Lcom/xueqiu/android/common/widget/DateTimePicker;->setIs24HourView(Z)V

    .line 9822
    invoke-virtual {v7, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 9824
    invoke-virtual {v7, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 9826
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 56
    return-void

    .line 9761
    :cond_1
    const v1, 0x7f0e035c

    if-ne p1, v1, :cond_0

    .line 9762
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 9763
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v2, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 9765
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(IIIII)V

    goto :goto_0

    .line 9817
    :cond_2
    const v1, 0x7f0e0765

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    return-void
.end method

.method private b(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V
    .locals 10

    .prologue
    .line 482
    const v0, 0x7f0e035a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 483
    const v1, 0x7f0e0625

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 484
    const v2, 0x7f0e0628

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 486
    iget-wide v4, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    .line 487
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 488
    iget-boolean v3, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    if-eqz v3, :cond_2

    const-string v3, "yyyy-MM-dd"

    .line 489
    :goto_0
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6, v3}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :cond_0
    const-string v3, ""

    .line 493
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 494
    iget-wide v6, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    iget-wide v8, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 495
    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    .line 499
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStat:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    return-void

    .line 488
    :cond_2
    const-string v3, "yyyy-MM-dd HH:mm"

    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method

.method private b([I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1164
    array-length v2, p1

    move v0, v1

    .line 1165
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1166
    aget v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1168
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 236
    if-nez p1, :cond_1

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->l()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 239
    invoke-direct {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 241
    :try_start_1
    invoke-direct {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->l()V

    .line 242
    invoke-direct {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->m()V

    .line 5292
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 56
    .line 10623
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->C:Z

    if-eqz v0, :cond_0

    .line 10624
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 11180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 10625
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v2, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mId:J

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-object v1, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;

    new-instance v4, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 11226
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/e;->a(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 10739
    :goto_0
    return-void

    .line 10647
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10648
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    .line 10651
    :cond_1
    const v0, 0x7f0e0619

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 10652
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    .line 10654
    :cond_2
    const v0, 0x7f070068

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d(I)V

    goto :goto_0

    .line 10657
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iput-object v0, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    .line 10659
    const v0, 0x7f0e0629

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 10660
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10661
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_4

    .line 10662
    const v0, 0x7f070062

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d(I)V

    goto :goto_0

    .line 10665
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iput-object v0, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mLocation:Ljava/lang/String;

    .line 10667
    const v0, 0x7f0e062a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 10668
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10669
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_5

    .line 10670
    const v0, 0x7f07005b

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d(I)V

    goto :goto_0

    .line 10673
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iput-object v0, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mDescription:Ljava/lang/String;

    .line 10675
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-boolean v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    if-eqz v0, :cond_6

    .line 10676
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    if-nez v0, :cond_8

    .line 10677
    const v0, 0x7f07005d

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d(I)V

    goto/16 :goto_0

    .line 10681
    :cond_6
    const v0, 0x7f0e0630

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 10682
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10683
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    if-nez v0, :cond_7

    .line 10684
    const v0, 0x7f07005f

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d(I)V

    goto/16 :goto_0

    .line 10687
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    const-string v1, "1"

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare:Ljava/lang/String;

    .line 10693
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10694
    const v0, 0x7f070065

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d(I)V

    goto/16 :goto_0

    .line 10689
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    const-string v1, "0"

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare:Ljava/lang/String;

    goto :goto_1

    .line 10698
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_b

    .line 10699
    const v0, 0x7f07005a

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d(I)V

    goto/16 :goto_0

    .line 10703
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v2, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    .line 10704
    const v0, 0x7f070069

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d(I)V

    goto/16 :goto_0

    .line 10708
    :cond_c
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 10710
    new-instance v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$10;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 10738
    iget-boolean v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->x:Z

    if-eqz v1, :cond_d

    .line 12180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 10739
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 12208
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/b/e;->b(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0

    .line 13180
    :cond_d
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 10741
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 13204
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/b/e;->a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->d(I)V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    return-void
.end method

.method private c(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V
    .locals 6

    .prologue
    .line 506
    const v0, 0x7f0e035c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 507
    iget-wide v2, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    .line 508
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 509
    iget-boolean v1, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    if-eqz v1, :cond_1

    const-string v1, "yyyy-MM-dd"

    .line 510
    :goto_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :cond_0
    const v0, 0x7f0e0622

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 514
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    return-void

    .line 509
    :cond_1
    const-string v1, "yyyy-MM-dd HH:mm"

    goto :goto_0
.end method

.method private c([I)V
    .locals 4

    .prologue
    .line 1176
    array-length v1, p1

    .line 1177
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1178
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1180
    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V
    .locals 4

    .prologue
    .line 56
    .line 14863
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 14864
    const-wide/16 v0, 0x0

    .line 14865
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->v:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    if-eqz v2, :cond_0

    .line 14866
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->v:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mId:J

    .line 15180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 14870
    new-instance v3, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;

    invoke-direct {v3, p0, p0, v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/base/b/q;J)V

    .line 15200
    iget-object v2, v2, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/e;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 56
    return-void
.end method

.method private d([I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1188
    array-length v2, p1

    move v0, v1

    .line 1189
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1190
    aget v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1191
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1193
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k:I

    return v0
.end method

.method private e(I)V
    .locals 6

    .prologue
    const v1, 0x7f0e0634

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1032
    packed-switch p1, :pswitch_data_0

    .line 1082
    :goto_0
    return-void

    .line 1034
    :pswitch_0
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1036
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    .line 1037
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    .line 1038
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    .line 1039
    invoke-direct {p0, v3}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(I)V

    .line 1040
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-direct {p0, v0, v3}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;I)V

    goto :goto_0

    .line 1043
    :pswitch_1
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    .line 1045
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b([I)V

    .line 1046
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    .line 1047
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    .line 1048
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    .line 1049
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    .line 1050
    new-array v0, v2, [I

    const v1, 0x7f0e062b

    aput v1, v0, v3

    .line 1051
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    .line 1052
    invoke-direct {p0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(I)V

    .line 1053
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-direct {p0, v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;I)V

    goto :goto_0

    .line 1056
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    .line 1057
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    .line 1058
    new-array v0, v2, [I

    const v1, 0x7f0e0631

    aput v1, v0, v3

    .line 1059
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b([I)V

    .line 1060
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    .line 1061
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    .line 1062
    new-array v0, v4, [I

    fill-array-data v0, :array_7

    .line 1063
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    .line 1064
    invoke-direct {p0, v4}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(I)V

    .line 7087
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 7088
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->E:Lcom/xueqiu/android/base/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->E:Lcom/xueqiu/android/base/b/x;

    .line 7336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 7088
    if-nez v0, :cond_0

    .line 7089
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->E:Lcom/xueqiu/android/base/b/x;

    .line 8329
    iput-boolean v2, v0, Lcom/android/volley/n;->h:Z

    .line 7090
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->E:Lcom/xueqiu/android/base/b/x;

    .line 7092
    :cond_0
    new-instance v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 7115
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 7116
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    .line 9222
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/xueqiu/android/base/b/e;->a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 7116
    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->E:Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0

    .line 1069
    :pswitch_3
    new-array v0, v5, [I

    fill-array-data v0, :array_8

    .line 1070
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    .line 1071
    new-array v0, v2, [I

    aput v1, v0, v3

    .line 1072
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    .line 1073
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V

    goto/16 :goto_0

    .line 1076
    :pswitch_4
    new-array v0, v5, [I

    fill-array-data v0, :array_9

    .line 1077
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    .line 1078
    new-array v0, v2, [I

    aput v1, v0, v3

    .line 1079
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c([I)V

    goto/16 :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1034
    :array_0
    .array-data 4
        0x7f0e061b
        0x7f0e0620
        0x7f0e0629
        0x7f0e062a
        0x7f0e062b
        0x7f0e062e
        0x7f0e0636
    .end array-data

    .line 1037
    :array_1
    .array-data 4
        0x7f0e061a
        0x7f0e061d
    .end array-data

    .line 1043
    :array_2
    .array-data 4
        0x7f0e061b
        0x7f0e0620
        0x7f0e0623
        0x7f0e0629
        0x7f0e062a
        0x7f0e062b
    .end array-data

    .line 1046
    :array_3
    .array-data 4
        0x7f0e0634
        0x7f0e0636
    .end array-data

    .line 1048
    :array_4
    .array-data 4
        0x7f0e061a
        0x7f0e061b
        0x7f0e061d
        0x7f0e0620
    .end array-data

    .line 1056
    :array_5
    .array-data 4
        0x7f0e0634
        0x7f0e0636
        0x7f0e062e
    .end array-data

    .line 1060
    :array_6
    .array-data 4
        0x7f0e061a
        0x7f0e061b
        0x7f0e061d
        0x7f0e0620
    .end array-data

    .line 1062
    :array_7
    .array-data 4
        0x7f0e062b
        0x7f0e0631
    .end array-data

    .line 1069
    :array_8
    .array-data 4
        0x7f0e061a
        0x7f0e061b
        0x7f0e061d
        0x7f0e0620
    .end array-data

    .line 1076
    :array_9
    .array-data 4
        0x7f0e061a
        0x7f0e061b
        0x7f0e061d
        0x7f0e0620
    .end array-data
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 253
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 254
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 257
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iput-object v1, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    .line 259
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    iget-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    iput-wide v2, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    const-string v1, "0"

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;

    .line 265
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 266
    const-string v1, "alert"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStat:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    const-string v1, "0"

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mPrivacy_write:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    const-string v1, "0"

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iput-boolean v5, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iput-boolean v5, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    .line 276
    :cond_1
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 280
    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 281
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 282
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 284
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iput-object v1, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    .line 286
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    const-string v1, "Asia/Shanghai"

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    .line 289
    return-void
.end method


# virtual methods
.method protected final j()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x3

    iput v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k:I

    .line 846
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k()V

    .line 847
    return-void
.end method

.method final k()V
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->y:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 896
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->y:Landroid/app/AlertDialog$Builder;

    .line 897
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->y:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f070070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 898
    new-instance v0, Lcom/xueqiu/android/common/a/k;

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->A:Lcom/xueqiu/android/common/a/k;

    .line 899
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->y:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->A:Lcom/xueqiu/android/common/a/k;

    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 900
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->y:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->z:Landroid/app/Dialog;

    .line 902
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k:I

    packed-switch v0, :pswitch_data_0

    .line 921
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->z:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 922
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->A:Lcom/xueqiu/android/common/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/k;->notifyDataSetChanged()V

    .line 923
    return-void

    .line 904
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->A:Lcom/xueqiu/android/common/a/k;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/k;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 908
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 909
    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 911
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->A:Lcom/xueqiu/android/common/a/k;

    .line 7066
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 7067
    iget-object v2, v0, Lcom/xueqiu/android/common/a/k;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 7068
    iget-object v0, v0, Lcom/xueqiu/android/common/a/k;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 914
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->A:Lcom/xueqiu/android/common/a/k;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/k;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->A:Lcom/xueqiu/android/common/a/k;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/k;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1004
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 1006
    packed-switch p1, :pswitch_data_0

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1008
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1009
    const-string v0, "extra_stock_entry"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 1010
    const v1, 0x7f0e062d

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1011
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    .line 1013
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0e062e

    aput v2, v0, v1

    .line 1014
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b([I)V

    .line 1015
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1016
    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a([I)V

    goto :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1015
    :array_0
    .array-data 4
        0x7f0e062b
        0x7f0e062e
    .end array-data
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1224
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 1225
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1227
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1228
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 1230
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->finish()V

    .line 1231
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f0301aa

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->setContentView(I)V

    .line 99
    iput-object p0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->j:Landroid/content/Context;

    .line 100
    iput-boolean v5, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->C:Z

    .line 102
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    const-string v0, "sotkc_symbol_extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    .line 104
    const-string v0, "user_investment_cal_list"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->u:Ljava/util/ArrayList;

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->u:Ljava/util/ArrayList;

    .line 3137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3138
    if-eqz v0, :cond_2

    .line 3139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 3140
    iget-boolean v4, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mIsMine:Z

    if-eqz v4, :cond_0

    .line 3142
    iget-object v4, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mType:I

    if-eq v4, v7, :cond_0

    .line 3144
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_2
    iput-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->t:Ljava/util/ArrayList;

    .line 106
    const-string v0, "investment_calendar_model"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->v:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 107
    const-string v0, "extra_push_event_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->r:Ljava/lang/String;

    .line 108
    const-string v0, "extra_calendar_from_url"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->s:Z

    .line 110
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->B:Landroid/app/ProgressDialog;

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->B:Landroid/app/ProgressDialog;

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3296
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3298
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3299
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3300
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$7;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$7;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 4212
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/e;->b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 115
    iput-boolean v6, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->x:Z

    .line 128
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    if-nez v0, :cond_4

    .line 129
    new-instance v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 5153
    :cond_4
    const v0, 0x7f0e0634

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5154
    const v0, 0x7f0e061a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5155
    const v0, 0x7f0e061b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5156
    const v0, 0x7f0e061d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5157
    const v0, 0x7f0e0620

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5158
    const v0, 0x7f0e0623

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5159
    const v0, 0x7f0e0626

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5160
    const v0, 0x7f0e062b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5161
    const v0, 0x7f0e062e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5162
    const v0, 0x7f0e0631

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5163
    const v0, 0x7f0e0636

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5164
    const v0, 0x7f0e0635

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5166
    const v0, 0x7f0e061f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 5167
    new-instance v1, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5198
    const v0, 0x7f0e0630

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 5199
    new-instance v1, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5217
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5219
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5220
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->e(I)V

    .line 5227
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->x:Z

    if-eqz v0, :cond_c

    .line 5228
    const v0, 0x7f0701d3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->v:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->v:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iput-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_7

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v2, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_8

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-wide v2, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    .line 4534
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->v:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4535
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->v:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    iget-object v1, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStat:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4536
    const-string v1, "alert"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4537
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->w:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    const-string v2, "alert"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_9
    :goto_4
    iput-boolean v6, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->x:Z

    goto/16 :goto_1

    .line 4541
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 5221
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5222
    invoke-direct {p0, v7}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->e(I)V

    goto/16 :goto_2

    .line 5224
    :cond_b
    invoke-direct {p0, v5}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->e(I)V

    goto/16 :goto_2

    .line 5230
    :cond_c
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
