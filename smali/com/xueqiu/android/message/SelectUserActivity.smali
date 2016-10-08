.class public Lcom/xueqiu/android/message/SelectUserActivity;
.super Lcom/xueqiu/android/common/b;
.source "SelectUserActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/message/model/Message;

.field private k:Landroid/net/Uri;

.field private p:Landroid/widget/EditText;

.field private q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private r:Landroid/view/View;

.field private s:Lcom/xueqiu/android/message/a/a;

.field private t:[J

.field private u:Z

.field private v:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/SelectUserActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Lcom/xueqiu/android/community/model/User;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 301
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    .line 4248
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->v:Landroid/view/LayoutInflater;

    const v3, 0x7f030177

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4249
    const v3, 0x7f0e0577

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4250
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4255
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 4256
    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    .line 4257
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 4258
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4260
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4261
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4262
    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4263
    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4264
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4265
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4266
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4267
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 302
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 303
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 304
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 305
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v0, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 307
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 310
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/SelectUserActivity;I)V
    .locals 3

    .prologue
    .line 68
    .line 7282
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    .line 8217
    iget-object v0, v1, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 8218
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 8219
    iget-object v0, v1, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    iget-object v2, v1, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8224
    :goto_0
    invoke-virtual {v1}, Lcom/xueqiu/android/message/a/a;->notifyDataSetChanged()V

    .line 8287
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    .line 9203
    iget-object v0, v0, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    .line 8288
    const-string v1, "SelectUser"

    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8289
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 8290
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 8292
    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/community/model/User;)V

    goto :goto_1

    .line 8221
    :cond_1
    iget-object v0, v1, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 8222
    iget-object v2, v1, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8295
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8293
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/SelectUserActivity;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/message/model/Talk;)V

    return-void
.end method

.method private a(Lcom/xueqiu/android/message/model/Talk;)V
    .locals 4

    .prologue
    .line 368
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    const-string v1, "talk"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v1

    .line 7069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 7077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 371
    invoke-virtual {p1, v1, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->allocateMessage(IJ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v1

    .line 372
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 373
    const-string v2, "extra_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->startActivity(Landroid/content/Intent;)V

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.talks"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const-string v2, "extra_talks"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 384
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 386
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->setResult(I)V

    .line 387
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->finish()V

    .line 388
    return-void

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->k:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "extra_image_uri"

    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->k:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->k:Landroid/net/Uri;

    goto :goto_0
.end method

.method private addMember(I)V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/a/a;->addMember(I)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    .line 2503
    iget-object v1, v1, Lcom/xueqiu/android/message/a/a;->c:Ljava/lang/String;

    .line 273
    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    .line 3503
    iget-object v3, v3, Lcom/xueqiu/android/message/a/a;->c:Ljava/lang/String;

    .line 274
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 275
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/a/a;->a(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 278
    :cond_0
    invoke-direct {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/community/model/User;)V

    .line 279
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/message/SelectUserActivity;)Lcom/xueqiu/android/message/a/a;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/SelectUserActivity;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/SelectUserActivity;->addMember(I)V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/message/SelectUserActivity;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/message/SelectUserActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    .line 5203
    iget-object v3, v0, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    .line 316
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 317
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 318
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    .line 319
    if-nez v1, :cond_0

    .line 320
    new-instance v1, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v1}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 321
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 322
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 323
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Talk;->setUserRef(Lcom/xueqiu/android/community/model/User;)V

    .line 327
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 328
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 329
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 330
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 331
    invoke-direct {p0, v1}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/message/model/Talk;)V

    .line 365
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [J

    move v1, v2

    .line 334
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 335
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 334
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->getApplication()Landroid/app/Application;

    .line 339
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 340
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->finish()V

    goto :goto_0

    .line 6180
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 344
    const-string v1, ""

    const-string v2, "\u7fa4\u7b80\u4ecb"

    new-instance v3, Lcom/xueqiu/android/message/SelectUserActivity$5;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/message/SelectUserActivity$5;-><init>(Lcom/xueqiu/android/message/SelectUserActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method


# virtual methods
.method public chooseGroup(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "extra_message"

    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->k:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 242
    const-string v1, "extra_photo_stream"

    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->k:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 244
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/SelectUserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 427
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 428
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/SelectUserActivity;->setResult(I)V

    .line 429
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->finish()V

    .line 431
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 432
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 102
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_5

    .line 104
    new-instance v1, Lcom/xueqiu/android/message/model/Message;

    invoke-direct {v1}, Lcom/xueqiu/android/message/model/Message;-><init>()V

    iput-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    .line 105
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v1, v5}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 106
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "create_chat"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->u:Z

    .line 120
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "exclude_user_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->t:[J

    .line 121
    iget-boolean v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->u:Z

    if-eqz v0, :cond_1

    .line 122
    const v0, 0x7f0700c9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->setTitle(I)V

    .line 125
    :cond_1
    const v0, 0x7f030178

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->setContentView(I)V

    .line 126
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->v:Landroid/view/LayoutInflater;

    .line 127
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 129
    const v0, 0x7f0e0578

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->r:Landroid/view/View;

    .line 130
    iget-boolean v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->k:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->r:Landroid/view/View;

    const v1, 0x7f0e0576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->r:Landroid/view/View;

    const v1, 0x7f0e0575

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/message/SelectUserActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/SelectUserActivity$1;-><init>(Lcom/xueqiu/android/message/SelectUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/message/SelectUserActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/SelectUserActivity$2;-><init>(Lcom/xueqiu/android/message/SelectUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/xueqiu/android/message/SelectUserActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/SelectUserActivity$3;-><init>(Lcom/xueqiu/android/message/SelectUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getFollowEachOtherUsers()Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    .line 208
    new-instance v2, Lcom/xueqiu/android/message/a/a;

    iget-object v3, p0, Lcom/xueqiu/android/message/SelectUserActivity;->t:[J

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/xueqiu/android/message/a/a;-><init>(Landroid/content/Context;Lcom/d/a/b/f;[JLjava/util/List;)V

    iput-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    .line 209
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    .line 1507
    iput-boolean v4, v2, Lcom/xueqiu/android/message/a/a;->d:Z

    .line 210
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v2, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setDrawingListUnderStickyHeader(Z)V

    .line 211
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v2, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 212
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v2, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setIndexScrollEnabled(Z)V

    .line 213
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v3, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    invoke-virtual {v2, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 214
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectUserActivity;->q:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v3, Lcom/d/a/b/f/c;

    invoke-direct {v3, v1, v4, v5}, Lcom/d/a/b/f/c;-><init>(Lcom/d/a/b/f;ZZ)V

    invoke-virtual {v2, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 216
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030168

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/SelectUserActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2226
    const v0, 0x7f0e055c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/SelectUserActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/SelectUserActivity$4;-><init>(Lcom/xueqiu/android/message/SelectUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_4
    return-void

    .line 108
    :cond_5
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iput-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->k:Landroid/net/Uri;

    goto/16 :goto_0

    .line 114
    :cond_6
    const-string v0, "extra_message"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    .line 115
    const-string v0, "extra_forward_image_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->k:Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 392
    const/4 v0, 0x1

    const v1, 0x7f070127

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/SelectUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020262

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 393
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 399
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->j:Lcom/xueqiu/android/message/model/Message;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity;->k:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 400
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070070

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/message/SelectUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    .line 401
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/message/SelectUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/SelectUserActivity$6;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/SelectUserActivity$6;-><init>(Lcom/xueqiu/android/message/SelectUserActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070409

    .line 406
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/message/SelectUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0701ae

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/message/SelectUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 422
    :goto_0
    return v0

    .line 408
    :cond_1
    iget-boolean v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->u:Z

    if-eqz v0, :cond_3

    .line 409
    invoke-direct {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->j()V

    .line 420
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectUserActivity;->finish()V

    .line 422
    :cond_2
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 411
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity;->s:Lcom/xueqiu/android/message/a/a;

    .line 7203
    iget-object v0, v0, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    .line 413
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 414
    const-string v2, "select_user_list"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 415
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/SelectUserActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 417
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->setResult(I)V

    goto :goto_1
.end method
