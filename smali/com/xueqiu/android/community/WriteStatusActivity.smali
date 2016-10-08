.class public Lcom/xueqiu/android/community/WriteStatusActivity;
.super Lcom/xueqiu/android/common/b;
.source "WriteStatusActivity.java"


# static fields
.field private static X:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/ImageButton;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/LinearLayout;

.field private O:Landroid/widget/RelativeLayout;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/widget/PopupWindow;

.field private S:Landroid/widget/SimpleAdapter;

.field private T:Lcom/xueqiu/android/community/a/ah;

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private V:Lcom/xueqiu/android/base/b/x;

.field private W:I

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aA:Z

.field private aB:Landroid/os/Handler;

.field private aC:Landroid/view/View$OnClickListener;

.field private aa:Lcom/xueqiu/android/community/model/Draft;

.field private ab:Z

.field private ac:Landroid/view/inputmethod/InputMethodManager;

.field private ad:Landroid/graphics/Bitmap;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Z

.field private ah:F

.field private ai:J

.field private aj:Ljava/lang/String;

.field private ak:Z

.field private al:Lcom/xueqiu/android/community/model/PaidMention;

.field private am:Lcom/xueqiu/android/community/model/User;

.field private an:I

.field private ao:Z

.field private ap:Ljava/lang/String;

.field private aq:I

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:J

.field private ay:Z

.field private az:Landroid/widget/TextView;

.field j:Landroid/app/AlertDialog;

.field private k:Z

.field private p:I

.field private q:J

.field private r:Lcom/xueqiu/android/community/model/Comment;

.field private s:Ljava/lang/CharSequence;

.field private t:Ljava/lang/String;

.field private u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

.field private v:Landroid/widget/ListView;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageButton;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    sput-object v0, Lcom/xueqiu/android/community/WriteStatusActivity;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 170
    iput-boolean v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    .line 172
    iput v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    .line 175
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    .line 176
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    .line 177
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->t:Ljava/lang/String;

    .line 179
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    .line 180
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    .line 181
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->w:Landroid/widget/EditText;

    .line 210
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    .line 211
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    .line 216
    iput v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    .line 234
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ac:Landroid/view/inputmethod/InputMethodManager;

    .line 236
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    .line 240
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ae:Ljava/lang/String;

    .line 241
    iput-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->af:Ljava/lang/String;

    .line 243
    iput-boolean v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    .line 248
    iput-boolean v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    .line 252
    iput v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->an:I

    .line 253
    iput-boolean v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ao:Z

    .line 256
    iput v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aq:I

    .line 257
    iput-boolean v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ar:Z

    .line 265
    iput-boolean v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->av:Z

    .line 268
    iput-boolean v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ay:Z

    .line 270
    iput-boolean v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aA:Z

    .line 1563
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$28;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$28;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1587
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aB:Landroid/os/Handler;

    .line 1903
    new-instance v0, Lcom/xueqiu/android/community/WriteStatusActivity$37;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$37;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aC:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic A(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 3

    .prologue
    .line 19337
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f070211

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0703f6

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 19338
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070562

    .line 19339
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$26;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$26;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 19340
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 19356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 126
    return-void
.end method

.method static synthetic B(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 20277
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->j:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 20278
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 20279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20280
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 20281
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 20282
    const-string v7, "title"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20283
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20285
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030073

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    const v7, 0x7f0e00a1

    aput v7, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$25;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$25;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 20312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->j:Landroid/app/AlertDialog;

    .line 20314
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 126
    return-void
.end method

.method static synthetic C(Lcom/xueqiu/android/community/WriteStatusActivity;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    return v0
.end method

.method static synthetic D(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    return-object v0
.end method

.method static synthetic F(Lcom/xueqiu/android/community/WriteStatusActivity;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aA:Z

    return v0
.end method

.method static synthetic G(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    return-object v0
.end method

.method static synthetic H(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->r()V

    return-void
.end method

.method static synthetic I(Lcom/xueqiu/android/community/WriteStatusActivity;)Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->av:Z

    return v0
.end method

.method static synthetic J(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->O:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic K(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->P:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic L(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->p()V

    return-void
.end method

.method static synthetic M(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 7

    .prologue
    .line 126
    .line 25895
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25896
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getPlainText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    invoke-static/range {v1 .. v6}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Z)V

    .line 25900
    :goto_0
    const v0, 0x7f07002f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 126
    return-void

    .line 25898
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getPlainText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic N(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    .line 26318
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->x:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 26319
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->x:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26321
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 26322
    iput-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    .line 26324
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xueqiu/android/community/WriteStatusActivity;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26325
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26326
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26327
    const-string v0, "WriteStatusActivity"

    const-string v1, "delete failed"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26330
    :cond_0
    iput-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    .line 126
    return-void
.end method

.method static synthetic O(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 4

    .prologue
    .line 126
    .line 26378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    .line 26379
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ab:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26380
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v0

    .line 26381
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    .line 26384
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26385
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/xueqiu/android/community/WriteStatusActivity;->X:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26386
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26387
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method

.method static synthetic P(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 4

    .prologue
    .line 126
    .line 27363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    .line 27364
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ab:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27365
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v0

    .line 27366
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    .line 27369
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27370
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 27371
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method

.method static synthetic Q(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->o()V

    return-void
.end method

.method static synthetic R(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 28871
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xueqiu.android.action.statusAnswerComplete"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28872
    const-string v3, "extra_answer_amount"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_answer_amount"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28873
    const-string v3, "extra_status_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_status_id"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28874
    const-string v3, "extra_comment_id"

    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v0

    :cond_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28875
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    .line 28876
    invoke-virtual {v0, v2}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 126
    return-void
.end method

.method static synthetic S(Lcom/xueqiu/android/community/WriteStatusActivity;)J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ai:J

    return-wide v0
.end method

.method static synthetic T(Lcom/xueqiu/android/community/WriteStatusActivity;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    return v0
.end method

.method static synthetic U(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->S:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic V(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/a/ah;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->T:Lcom/xueqiu/android/community/a/ah;

    return-object v0
.end method

.method static synthetic W(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 5

    .prologue
    .line 29060
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 30069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 30077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 29060
    const/4 v1, 0x1

    new-instance v4, Lcom/xueqiu/android/community/WriteStatusActivity$39;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$39;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->c(JILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    .line 126
    return-void
.end method

.method static synthetic X(Lcom/xueqiu/android/community/WriteStatusActivity;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aq:I

    return v0
.end method

.method static synthetic Y(Lcom/xueqiu/android/community/WriteStatusActivity;)I
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aq:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aq:I

    return v0
.end method

.method static synthetic Z(Lcom/xueqiu/android/community/WriteStatusActivity;)I
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->an:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->an:I

    return v0
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1457
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xueqiu/android/community/WriteStatusActivity;->X:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1459
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1460
    const-string v1, "WriteStatusActivity"

    const-string v2, "mkdir failed"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1466
    const-string v7, ""

    .line 1467
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1468
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1469
    const-string v0, "WriteStatusActivity"

    const-string v2, "delete failed"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1474
    const-string v0, "WriteStatusActivity"

    const-string v1, "createNewFile failed"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1478
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1490
    :goto_0
    if-eqz v1, :cond_5

    .line 1491
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ad;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1492
    if-eqz v0, :cond_3

    .line 1493
    invoke-static {v1, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1495
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xueqiu/android/community/WriteStatusActivity;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/ad;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1503
    :goto_1
    return-object v0

    .line 1481
    :cond_4
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1482
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1483
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1484
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1485
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1486
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 1501
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v6

    .line 1503
    goto :goto_1

    :cond_6
    move-object v1, v7

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1507
    const/4 v2, 0x0

    .line 1509
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 1513
    :goto_0
    const/4 v0, -0x1

    .line 1514
    if-eqz v2, :cond_0

    .line 1515
    const-string v0, "Orientation"

    invoke-virtual {v2, v0, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 1519
    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 1533
    :goto_1
    if-eqz v0, :cond_1

    .line 1534
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1535
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1537
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    .line 1536
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1542
    :cond_1
    return-object p1

    .line 1511
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1521
    :pswitch_1
    const/16 v0, 0x10e

    .line 1522
    goto :goto_1

    .line 1524
    :pswitch_2
    const/16 v0, 0xb4

    .line 1525
    goto :goto_1

    .line 1527
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_1

    .line 1519
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;
    .locals 1

    .prologue
    .line 126
    invoke-static {p0, p1, p2}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 1550
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1551
    invoke-static {p1, v0, v0}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/graphics/Bitmap;II)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 1552
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->x:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1553
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1555
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aB:Landroid/os/Handler;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$27;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$27;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1561
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 126
    .line 11445
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->R:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 11446
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->R:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11450
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->R:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->B:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 126
    return-void

    .line 12403
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c7

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 12404
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->R:Landroid/widget/PopupWindow;

    .line 12405
    const v0, 0x7f0e032d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 12406
    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$23;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$23;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12420
    const v0, 0x7f0e032e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 12421
    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$34;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$34;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12433
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->R:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 12434
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->R:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 12435
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->R:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$44;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$44;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 12441
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->R:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/WriteStatusActivity;I)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;ZZ)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21239
    const-string v2, "WriteStatusActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searchUserOrStock keyword = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isLoadMore = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21240
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    .line 21336
    iget-boolean v2, v2, Lcom/android/volley/n;->h:Z

    .line 21240
    if-nez v2, :cond_0

    .line 21241
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    .line 22329
    iput-boolean v0, v2, Lcom/android/volley/n;->h:Z

    .line 21244
    :cond_0
    iget v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 21245
    :cond_1
    if-nez p2, :cond_2

    .line 21246
    iput v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->an:I

    .line 21247
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ap:Ljava/lang/String;

    .line 21249
    :cond_2
    iget-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ao:Z

    if-nez v2, :cond_3

    if-nez p2, :cond_5

    .line 23282
    :cond_3
    if-eqz p2, :cond_4

    .line 23285
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23286
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    const v3, 0x7f0e076c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23288
    :cond_4
    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$43;

    invoke-direct {v2, p0, p0, p2}, Lcom/xueqiu/android/community/WriteStatusActivity$43;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Lcom/xueqiu/android/base/b/q;Z)V

    .line 23331
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    iget v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->an:I

    if-eqz p3, :cond_6

    :goto_0
    invoke-virtual {v3, p1, v4, v0, v2}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    .line 21250
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v1

    .line 23331
    goto :goto_0

    .line 21253
    :cond_7
    new-instance v6, Lcom/xueqiu/android/community/WriteStatusActivity$42;

    invoke-direct {v6, p0, p0, p2}, Lcom/xueqiu/android/community/WriteStatusActivity$42;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Lcom/xueqiu/android/base/b/q;Z)V

    .line 21275
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const/16 v3, 0x14

    .line 24069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 24077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    move-object v2, p1

    .line 21275
    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 9180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 1821
    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    iget-boolean v6, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    iget-boolean v5, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-nez v5, :cond_0

    const/4 v7, 0x1

    :goto_0
    iget-object v5, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    if-eqz v5, :cond_1

    const-string v8, "COMMENT"

    :goto_1
    move-object v5, p1

    move v9, p2

    invoke-static/range {v0 .. v9}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;ZZLjava/lang/String;Z)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$36;

    invoke-direct {v1, p0, p2}, Lcom/xueqiu/android/community/WriteStatusActivity$36;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    .line 1823
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 1851
    return-void

    .line 1821
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const-string v8, "STATUS"

    goto :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/WriteStatusActivity;I)I
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->R:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ap:Ljava/lang/String;

    return-object p1
.end method

.method private static b(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/community/model/User;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2100
    const-string v0, "name_key"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    const-string v0, "id_key"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    const-string v0, "block_status"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getBlockStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    const-string v0, "profile_image"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    const-string v0, "description"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    const-string v0, "verified_description"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    const-string v0, "type_key"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    return-object p0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->I:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setTextColor(I)V

    .line 1205
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1206
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1207
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1208
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->I:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1913
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->n()V

    .line 1914
    iput-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ay:Z

    .line 1915
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1916
    invoke-direct {p0, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Z)V

    .line 1918
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Z)V

    .line 1919
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->s()V

    .line 1920
    const v0, 0x7f0e0316

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->C:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1923
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f070126

    .line 1924
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1925
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getSelectionEnd()I

    move-result v0

    .line 1926
    if-nez p2, :cond_2

    .line 1927
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1933
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 1936
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->w:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1937
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1938
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->S:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 1939
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->T:Lcom/xueqiu/android/community/a/ah;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 1940
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->m()V

    .line 1941
    return-void

    .line 1929
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\"#C0A26F\">"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1930
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1, p1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setUserName(Ljava/lang/String;)V

    .line 1931
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 10074
    iput v0, v1, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    .line 10075
    iput v2, v1, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const v3, 0x7f04000f

    const/4 v2, 0x0

    .line 475
    if-eqz p1, :cond_0

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    .line 6485
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6486
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 6487
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6488
    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$45;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$45;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6512
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    iput-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    .line 6516
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6517
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6519
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 6520
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 6521
    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$46;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity$46;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Landroid/content/res/TypedArray;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6543
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 6517
    :array_0
    .array-data 4
        0x7f0100d6
        0x7f0100da
        0x7f010091
    .end array-data
.end method

.method static synthetic c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2111
    .line 2112
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2113
    const/4 v0, 0x1

    .line 2117
    :cond_0
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$40;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/community/WriteStatusActivity$40;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;I)V

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/b/ai;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2161
    return-void

    .line 2114
    :cond_1
    if-nez p1, :cond_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 126
    .line 27860
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "JSBridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 27861
    if-nez v1, :cond_0

    .line 27864
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27865
    const-string v0, "state_key"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27866
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    .line 27867
    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 126
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V
    .locals 5

    .prologue
    const v4, 0x7f0e076c

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 126
    .line 24164
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    .line 24336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 24164
    if-nez v0, :cond_0

    .line 24165
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    .line 25329
    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 24167
    :cond_0
    if-nez p1, :cond_1

    .line 24168
    iput v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aq:I

    .line 24169
    iput-boolean v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ar:Z

    .line 24180
    :goto_0
    new-instance v0, Lcom/xueqiu/android/community/WriteStatusActivity$41;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/community/WriteStatusActivity$41;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    .line 24234
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aq:I

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/b/ai;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->V:Lcom/xueqiu/android/base/b/x;

    .line 24177
    :goto_1
    return-void

    .line 24171
    :cond_1
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ar:Z

    if-eqz v0, :cond_2

    .line 24172
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24173
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 24175
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24176
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private c(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1211
    if-eqz p1, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1218
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2336
    if-eqz p1, :cond_0

    .line 2337
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2338
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2343
    :goto_0
    return-void

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2341
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/WriteStatusActivity;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aw:Z

    return p1
.end method

.method static synthetic e(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/PaidMention;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    return p1
.end method

.method static synthetic f(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ar:Z

    return p1
.end method

.method static synthetic g(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->G:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/WriteStatusActivity;->d(Z)V

    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->H:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ao:Z

    return p1
.end method

.method static synthetic i(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->s()V

    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->F:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/xueqiu/android/community/WriteStatusActivity;->X:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 11

    .prologue
    const v10, 0x7f0e0325

    const v9, 0x7f0e0321

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 565
    const v0, 0x7f0e031c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->O:Landroid/widget/RelativeLayout;

    .line 566
    const v0, 0x7f0e031d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->P:Landroid/widget/TextView;

    .line 567
    const v0, 0x7f0e031e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Q:Landroid/widget/ImageView;

    .line 568
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Q:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$47;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$47;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    const v0, 0x7f0e032b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->G:Landroid/widget/RelativeLayout;

    .line 575
    const v0, 0x7f0e032c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->H:Landroid/widget/RelativeLayout;

    .line 576
    const v0, 0x7f0e026c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->E:Landroid/widget/RelativeLayout;

    .line 577
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->E:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$48;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$48;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    const v0, 0x7f0e026d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->F:Landroid/widget/ImageView;

    .line 585
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PaidMention;->getAmount()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 586
    :goto_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "\u56de\u590d\u6210\u529f\u540e\u5c06\u5f97\u5230\u5bf9\u65b9\u7684\u7ea2\u5305[\u00a5%s]"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    const v0, 0x7f0e026f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->I:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    .line 589
    const v0, 0x7f0e0270

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->J:Landroid/widget/TextView;

    .line 591
    const v0, 0x7f0e026e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->K:Landroid/widget/TextView;

    .line 592
    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->L:Landroid/widget/LinearLayout;

    .line 593
    const v0, 0x7f0e0273

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    .line 594
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$2;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->n()V

    .line 631
    const-string v0, "pay_ask_first_in"

    invoke-static {p0, v0, v6}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->as:Z

    .line 633
    const-string v0, "first_answer_paid_question"

    invoke-static {p0, v0, v6}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->at:Z

    .line 635
    const-string v0, "first_pay_at_author"

    invoke-static {p0, v0, v6}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->au:Z

    .line 637
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->y:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$3;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    new-instance v0, Lcom/xueqiu/android/community/WriteStatusActivity$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$4;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 666
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$5;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$5;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 675
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$6;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$6;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 742
    const v1, 0x7f0e0323

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$7;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$7;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    const v1, 0x7f0e0322

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity$8;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Landroid/os/ResultReceiver;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    const v0, 0x7f0e027f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$9;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    invoke-virtual {p0, v10}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$10;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    const v0, 0x7f0e0317

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$11;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    const v0, 0x7f0e0313

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    .line 793
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03021c

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    .line 794
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 796
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 797
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$13;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    const v0, 0x7f0e0312

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->w:Landroid/widget/EditText;

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    .line 812
    new-instance v0, Lcom/xueqiu/android/common/a/g;

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    const v3, 0x7f030198

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "name_key"

    aput-object v1, v4, v6

    new-array v5, v7, [I

    const v1, 0x7f0e0130

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/a/g;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->S:Landroid/widget/SimpleAdapter;

    .line 814
    new-instance v0, Lcom/xueqiu/android/community/a/ah;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/community/a/ah;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->T:Lcom/xueqiu/android/community/a/ah;

    .line 816
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->S:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 817
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$14;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 875
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$15;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 907
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->w:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$16;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$16;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 940
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->w:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$17;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$17;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 962
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ab:Z

    if-eqz v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getType()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    .line 967
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 968
    const-string v0, "status_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    const-string v0, "status_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    .line 972
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    if-ne v0, v7, :cond_1

    .line 973
    new-instance v0, Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Comment;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    .line 974
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    const-string v2, "comment_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/Comment;->setId(J)V

    .line 976
    const v0, 0x7f0e0320

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 977
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 978
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    const-string v0, "is_repost"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    const-string v0, "is_repost"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    .line 982
    const v0, 0x7f0e0321

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 983
    iget-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    const-string v2, "draft_text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 988
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 989
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v0

    .line 991
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 992
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v0

    .line 993
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1007
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xueqiu/android/community/WriteStatusActivity;->X:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/xueqiu/android/base/util/ad;->a(Ljava/lang/String;II)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 1009
    if-eqz v0, :cond_2

    .line 1010
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->x:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1011
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :cond_2
    :goto_2
    const v0, 0x7f0e0326

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 1021
    new-instance v1, Lcom/xueqiu/android/community/a/c;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1022
    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$18;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$18;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1039
    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$19;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$19;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1055
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ac:Landroid/view/inputmethod/InputMethodManager;

    .line 1057
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    if-ne v0, v7, :cond_3

    .line 1058
    const v0, 0x7f0e0320

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1059
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_isretweet"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1063
    iput-boolean v7, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    .line 1064
    invoke-virtual {p0, v9}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1065
    iget-boolean v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1069
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1070
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_user_profile"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1071
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aj:Ljava/lang/String;

    .line 1073
    :try_start_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ai:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1078
    :goto_3
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_amount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ah:F

    .line 1079
    iput-boolean v7, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    .line 1080
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Z)V

    .line 1081
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "@%s[\u00a5%.2f] "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aj:Ljava/lang/String;

    aput-object v3, v2, v6

    iget v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ah:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-direct {p0, v0, v7}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;Z)V

    .line 1087
    :cond_4
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aA:Z

    if-eqz v0, :cond_c

    .line 1088
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->l()V

    .line 1093
    :goto_4
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    .line 7455
    if-nez v0, :cond_d

    .line 7456
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7457
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 7458
    const v0, 0x7f0e0316

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 7459
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 7460
    invoke-virtual {p0, v10}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 7470
    :cond_5
    :goto_5
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->s()V

    .line 1096
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->paidMentionAvailable()Z

    move-result v0

    .line 1097
    if-nez v0, :cond_6

    .line 1098
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1100
    :cond_6
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-nez v0, :cond_7

    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setHintTextColor(I)V

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    const v1, 0x7f070255

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setHint(I)V

    .line 1103
    iput-boolean v7, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    .line 1104
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Z)V

    .line 1107
    iput-boolean v7, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    .line 1108
    invoke-virtual {p0, v9}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1109
    iget-boolean v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1112
    :cond_7
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->am:Lcom/xueqiu/android/community/model/User;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    if-eq v0, v7, :cond_8

    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1113
    :cond_8
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->am:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$20;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$20;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->j(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1138
    :cond_9
    return-void

    .line 585
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 996
    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v0

    .line 997
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xueqiu/android/community/WriteStatusActivity;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ad;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1000
    if-eqz v2, :cond_9

    .line 1003
    invoke-static {v1, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1015
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1074
    :catch_1
    move-exception v0

    .line 1075
    const-string v1, "WriteStatusActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1090
    :cond_c
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->m()V

    goto/16 :goto_4

    .line 7463
    :cond_d
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7464
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 7465
    const v0, 0x7f0e0316

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 7466
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 7467
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 7468
    :cond_e
    invoke-virtual {p0, v10}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method static synthetic k(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 126
    .line 12559
    iput-boolean v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->au:Z

    .line 12560
    const-string v0, "first_pay_at_author"

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 12561
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->O:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1141
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    if-nez v0, :cond_1

    .line 1142
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->as:Z

    if-nez v0, :cond_0

    .line 8221
    const-string v0, "WriteStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showPayGuide mHasUsedPay = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->as:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/GuideTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8223
    const-string v1, "extra_which_view"

    sget-object v2, Lcom/xueqiu/android/common/model/GuideTutorialType;->PAY_ASK_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8224
    const-string v1, "extra_view_click_position"

    new-array v2, v5, [I

    const/4 v3, 0x0

    const v4, 0x7f0e0253

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 8225
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 8226
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->overridePendingTransition(II)V

    .line 1144
    iput-boolean v5, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->as:Z

    .line 1145
    const-string v0, "pay_ask_first_in"

    invoke-static {p0, v0, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1147
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    .line 1148
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->q()V

    .line 1149
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->w:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1150
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->w:Landroid/widget/EditText;

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1154
    :goto_0
    return-void

    .line 1152
    :cond_1
    const v0, 0x7f07024d

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/xueqiu/android/community/WriteStatusActivity;)Z
    .locals 6

    .prologue
    .line 13440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13441
    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ax:J

    sub-long v2, v0, v2

    .line 13442
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 13443
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 13445
    :cond_0
    iput-wide v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ax:J

    .line 13446
    const/4 v0, 0x0

    .line 126
    goto :goto_0
.end method

.method static synthetic m(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1159
    const-string v0, "input_method"

    .line 1160
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1161
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1162
    return-void
.end method

.method static synthetic n(Lcom/xueqiu/android/community/WriteStatusActivity;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    return v0
.end method

.method private n()V
    .locals 5

    .prologue
    const v4, 0x7f07009f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1172
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    if-ne v0, v2, :cond_2

    .line 1173
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Z:Ljava/lang/String;

    .line 1175
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    .line 1196
    :goto_0
    return-void

    .line 1176
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-nez v0, :cond_1

    .line 1177
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_reply_somebody"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Z:Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1181
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_reply_somebody"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07009e

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Z:Ljava/lang/String;

    .line 1183
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1186
    const v0, 0x7f070383

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Z:Ljava/lang/String;

    .line 1187
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->az:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->az:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    rsub-int v1, v1, 0x8c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1190
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1191
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1193
    :cond_4
    const v0, 0x7f07057c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Z:Ljava/lang/String;

    .line 1194
    const v0, 0x7f07057d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 1854
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1855
    const-string v1, "com.xueqiu.android.action.statusPosted"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1856
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1857
    return-void
.end method

.method static synthetic o(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 11

    .prologue
    .line 13595
    invoke-static {}, Lcom/xueqiu/android/base/util/ap;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 13597
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getPlainText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13598
    if-eqz v5, :cond_0

    .line 13599
    const-string v0, "\n"

    const-string v1, "<br />"

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13601
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 13602
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    if-nez v0, :cond_4

    .line 13603
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    if-nez v0, :cond_3

    .line 13801
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 14180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 13801
    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    iget-boolean v6, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    invoke-static/range {v0 .. v6}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Z)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$35;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$35;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 13802
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 13792
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 13793
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13794
    const-string v1, "extra_task_id"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13795
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->setResult(ILandroid/content/Intent;)V

    .line 13796
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->finish()V

    .line 126
    :cond_2
    return-void

    .line 13606
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v5, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 13609
    :cond_4
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-eqz v0, :cond_7

    .line 13610
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.0f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ah:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 13611
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    .line 13612
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v3

    :goto_1
    iget-wide v8, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ai:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    .line 13611
    :goto_2
    invoke-static/range {v0 .. v8}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 13614
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 13612
    :cond_5
    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 13616
    :cond_7
    const-string v0, "UNANSWERED"

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PaidMention;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13617
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 13618
    :cond_8
    const-string v0, "OUTDATED"

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PaidMention;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13619
    const/4 v0, 0x0

    invoke-direct {p0, v5, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 13623
    :cond_9
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 13624
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 13627
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    .line 13628
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 13629
    :cond_a
    const/4 v7, 0x0

    .line 13635
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 13636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0702f8

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13642
    :goto_4
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    if-nez v0, :cond_d

    .line 13643
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 15180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 13643
    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;I)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$29;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$29;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 13644
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    goto/16 :goto_0

    .line 13631
    :cond_b
    const/4 v7, 0x1

    goto :goto_3

    :cond_c
    move-object v4, v5

    .line 13638
    goto :goto_4

    .line 13661
    :cond_d
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-eqz v0, :cond_e

    .line 13663
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.0f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v5, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ah:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 13664
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    iget-wide v8, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ai:J

    .line 13665
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 13664
    invoke-static/range {v1 .. v7}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 13666
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 13669
    :cond_e
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 16180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 13669
    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    iget-boolean v6, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->k:Z

    iget-boolean v7, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-nez v7, :cond_f

    const/4 v7, 0x1

    :goto_5
    iget-object v8, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    if-eqz v8, :cond_10

    const-string v8, "COMMENT"

    :goto_6
    iget-boolean v9, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    invoke-static/range {v0 .. v9}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;ZZLjava/lang/String;Z)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$30;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$30;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 13671
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    goto/16 :goto_0

    .line 13669
    :cond_f
    const/4 v7, 0x0

    goto :goto_5

    :cond_10
    const-string v8, "STATUS"

    goto :goto_6

    .line 13690
    :cond_11
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 13691
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 17180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 13691
    iget-wide v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    iget-object v6, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$31;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$31;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 13692
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    goto/16 :goto_0

    .line 13727
    :cond_12
    const-string v0, "WriteStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startPostStatusTask mWriteType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsPaid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPayMentioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ai:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPayAmount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ah:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13729
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    if-eqz v0, :cond_13

    .line 13731
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.0f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ah:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13732
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 18180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 13732
    iget-wide v6, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ai:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v5, v3}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$32;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity$32;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lrx/a;->b(Lrx/i;)Lrx/j;

    goto/16 :goto_0

    .line 13753
    :cond_13
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 19180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    .line 13753
    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->t:Ljava/lang/String;

    iget-object v6, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->af:Ljava/lang/String;

    iget-object v7, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ae:Ljava/lang/String;

    iget-object v8, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$33;

    invoke-direct {v1, p0, v10}, Lcom/xueqiu/android/community/WriteStatusActivity$33;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    goto/16 :goto_0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 1881
    const-string v0, "solory"

    const-string v1, " notifyBack "

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "JSBridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1883
    const-string v1, "solory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " notifyBack  intentfilter :  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1884
    if-eqz v1, :cond_0

    .line 1891
    :goto_0
    return-void

    .line 1887
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1888
    const-string v0, "state_key"

    const-string v2, "cancel"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1889
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    .line 1890
    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method static synthetic p(Lcom/xueqiu/android/community/WriteStatusActivity;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    return v0
.end method

.method private q()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1945
    iput-boolean v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ay:Z

    .line 1946
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->s()V

    .line 1947
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-ne v0, v4, :cond_0

    .line 1948
    invoke-direct {p0, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Z)V

    .line 1950
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ap:Ljava/lang/String;

    .line 1951
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1952
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-ne v0, v5, :cond_2

    .line 1953
    const v0, 0x7f07035c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1956
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1957
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(I)V

    .line 1958
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1959
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1978
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->r()V

    .line 1979
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ac:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1980
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aB:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1982
    const v0, 0x7f0e0316

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1983
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10165
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 10167
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 10168
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1985
    return-void

    .line 1960
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-nez v0, :cond_3

    .line 1961
    const v0, 0x7f07035e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1964
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1965
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(I)V

    .line 1966
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1967
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1968
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-ne v0, v4, :cond_1

    .line 1969
    const v0, 0x7f07035d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;)V

    .line 1970
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1971
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1973
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(I)V

    .line 1974
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1975
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 1954
    :array_0
    .array-data 4
        0x7f0100d6
        0x7f0100da
        0x7f010091
    .end array-data

    .line 1962
    :array_1
    .array-data 4
        0x7f0100d6
        0x7f0100da
        0x7f010091
    .end array-data

    .line 1971
    :array_2
    .array-data 4
        0x7f0100d7
        0x7f010092
    .end array-data
.end method

.method static synthetic q(Lcom/xueqiu/android/community/WriteStatusActivity;)Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aA:Z

    return v0
.end method

.method static synthetic r(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->am:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method private r()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1988
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1989
    invoke-direct {p0, v7}, Lcom/xueqiu/android/community/WriteStatusActivity;->d(Z)V

    .line 1991
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->am:Lcom/xueqiu/android/community/model/User;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->am:Lcom/xueqiu/android/community/model/User;

    .line 1992
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 11077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 1992
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1993
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1994
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1995
    const-string v2, "type_key"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    iget-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->av:Z

    if-eqz v2, :cond_1

    .line 1998
    iget-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aw:Z

    if-eqz v2, :cond_0

    .line 1999
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->am:Lcom/xueqiu/android/community/model/User;

    const/4 v4, 0x3

    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2001
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2026
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2027
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2028
    iget v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-ne v1, v8, :cond_2

    .line 2029
    invoke-static {}, Lcom/xueqiu/android/community/i;->a()Lcom/xueqiu/android/community/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/i;->b()Ljava/util/List;

    move-result-object v0

    .line 2030
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->S:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object v1, v0

    .line 2039
    :goto_1
    if-eqz v1, :cond_5

    .line 2040
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    .line 2041
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2004
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->am:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    new-instance v3, Lcom/xueqiu/android/community/WriteStatusActivity$38;

    invoke-direct {v3, p0, v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity$38;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v2, v4, v5, v3}, Lcom/xueqiu/android/base/b/ai;->j(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 2032
    :cond_2
    iget v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-nez v1, :cond_3

    .line 2034
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->T:Lcom/xueqiu/android/community/a/ah;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object v1, v0

    goto :goto_1

    .line 2035
    :cond_3
    iget v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-ne v1, v6, :cond_4

    .line 2037
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->v:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->T:Lcom/xueqiu/android/community/a/ah;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_4
    move-object v1, v0

    goto :goto_1

    .line 2045
    :cond_5
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-nez v0, :cond_7

    .line 2046
    invoke-direct {p0, v7}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(I)V

    .line 2052
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->S:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 2053
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->T:Lcom/xueqiu/android/community/a/ah;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 2054
    return-void

    .line 2047
    :cond_7
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-ne v0, v6, :cond_8

    .line 2048
    invoke-direct {p0, v6}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(I)V

    goto :goto_3

    .line 2049
    :cond_8
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    if-ne v0, v8, :cond_6

    .line 2050
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method private s()V
    .locals 5

    .prologue
    const v4, 0x7f070021

    const/high16 v3, 0x41900000    # 18.0f

    const/4 v2, 0x2

    .line 2450
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ay:Z

    if-eqz v0, :cond_2

    .line 2451
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2452
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-eqz v0, :cond_1

    .line 2453
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    if-eqz v0, :cond_0

    .line 2454
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2455
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    const v1, 0x7f07025f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2468
    :goto_0
    return-void

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2458
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2461
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2462
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2465
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2466
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->M:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic s(Lcom/xueqiu/android/community/WriteStatusActivity;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aw:Z

    return v0
.end method

.method static synthetic t(Lcom/xueqiu/android/community/WriteStatusActivity;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->au:Z

    return v0
.end method

.method static synthetic u(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->l()V

    return-void
.end method

.method static synthetic v(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aB:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic w(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->az:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->q()V

    return-void
.end method

.method static synthetic y(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic z(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ac:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/Exception;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Exception;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2351
    if-eqz p2, :cond_1

    .line 2352
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 2370
    :cond_0
    :goto_0
    return-void

    .line 2355
    :cond_1
    if-eqz p1, :cond_0

    .line 2356
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->W:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2357
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2358
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2359
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->S:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2361
    :cond_2
    if-eqz p3, :cond_3

    .line 2362
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2367
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->T:Lcom/xueqiu/android/community/a/ah;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    goto :goto_0

    .line 2364
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2365
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->U:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 2488
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2489
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->setTheme(I)V

    .line 2493
    :goto_0
    return-void

    .line 2491
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1398
    packed-switch p1, :pswitch_data_0

    .line 1451
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 1452
    :cond_1
    return-void

    .line 1401
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1402
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    .line 1403
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1410
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xueqiu/android/community/WriteStatusActivity;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ad;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1415
    if-eqz v1, :cond_1

    .line 1419
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    .line 1420
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ad;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1421
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1427
    :pswitch_2
    if-ne p2, v4, :cond_2

    .line 1428
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1429
    const-string v1, "extra_user_selected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    .line 1430
    const-string v1, "extra_amount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ah:F

    .line 1431
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ai:J

    .line 1432
    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aj:Ljava/lang/String;

    .line 1433
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ag:Z

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Z)V

    .line 1434
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "@%s[\u00a5%.2f] "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aj:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ah:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1435
    invoke-direct {p0, v0, v6}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;Z)V

    .line 1438
    :cond_2
    :pswitch_3
    if-ne p2, v4, :cond_0

    .line 1439
    if-eqz p3, :cond_1

    .line 1442
    const-string v0, "result_pay_state"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1443
    if-eqz v0, :cond_0

    .line 1444
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->o()V

    .line 1445
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->finish()V

    goto/16 :goto_0

    .line 1398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 2377
    const v0, 0x7f0e0316

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2378
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2379
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aA:Z

    if-eqz v0, :cond_0

    .line 2380
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 11253
    :goto_0
    return-void

    .line 2382
    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2385
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    if-nez v0, :cond_2

    .line 2386
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0

    .line 2387
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    .line 2388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2389
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->p()V

    .line 2390
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0

    .line 11252
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11253
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->finish()V

    goto :goto_0

    .line 11255
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07012b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070341

    .line 11256
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$24;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$24;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07024a

    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$22;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$22;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 11263
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070453

    .line 11269
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v9, 0x7f0e0325

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 276
    const v0, 0x7f0300c5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->setContentView(I)V

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 4186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 3479
    if-eqz v0, :cond_1

    .line 3480
    invoke-static {p0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    move v0, v1

    .line 277
    :goto_0
    if-eqz v0, :cond_2

    .line 367
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 3483
    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_card_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->af:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_card_param"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ae:Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "to_pick_user"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aA:Z

    .line 284
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_is_from_draft"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ab:Z

    .line 286
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ab:Z

    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_draft"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Draft;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    .line 289
    :cond_3
    const v0, 0x7f0e0318

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    .line 290
    const v0, 0x7f0e0317

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->x:Landroid/widget/ImageView;

    .line 292
    const v0, 0x7f0e032a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->C:Landroid/widget/LinearLayout;

    .line 293
    const v0, 0x7f0e0314

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->N:Landroid/widget/LinearLayout;

    .line 294
    const v0, 0x7f0e0324

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->y:Landroid/widget/ImageButton;

    .line 295
    const v0, 0x7f0e0327

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->z:Landroid/widget/RelativeLayout;

    .line 296
    const v0, 0x7f0e0328

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->A:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0e0329

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->B:Landroid/widget/ImageButton;

    .line 298
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->B:Landroid/widget/ImageButton;

    new-instance v3, Lcom/xueqiu/android/community/WriteStatusActivity$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$1;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v0, 0x7f0e031b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->az:Landroid/widget/TextView;

    .line 306
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4399
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 4400
    const-string v4, "extra_module_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->t:Ljava/lang/String;

    .line 4402
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v3

    .line 5193
    iget-boolean v3, v3, Lcom/xueqiu/android/base/t;->c:Z

    .line 4405
    if-nez v3, :cond_4

    .line 4406
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->finish()V

    .line 4407
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4408
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4409
    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4410
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 4413
    :cond_4
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4414
    if-eqz v3, :cond_5

    .line 4415
    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 4417
    :cond_5
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4418
    if-eqz v3, :cond_6

    .line 4419
    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v4}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 4422
    :cond_6
    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v3}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4423
    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v4}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 4426
    :cond_7
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4427
    if-eqz v0, :cond_8

    .line 4428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    .line 4429
    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    .line 4430
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 4431
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Landroid/graphics/Bitmap;)V

    :cond_8
    move v0, v1

    .line 306
    :goto_2
    if-eqz v0, :cond_f

    .line 307
    iput v8, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    .line 312
    :goto_3
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_status_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    .line 314
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_paid_mention"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    if-eqz v0, :cond_9

    .line 316
    const-string v0, "UNANSWERED"

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/PaidMention;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 6077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->al:Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PaidMention;->getUserId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    .line 318
    iput-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    .line 323
    :cond_9
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-eqz v0, :cond_a

    .line 324
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_paid_to_user"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->am:Lcom/xueqiu/android/community/model/User;

    .line 327
    :cond_a
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 328
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_comment"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    .line 332
    :cond_b
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    if-ne v0, v1, :cond_10

    .line 333
    :cond_c
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_retweet_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    .line 334
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 335
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_d
    :goto_4
    iget-wide v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->q:J

    const-wide/32 v4, 0x14987ed

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->r:Lcom/xueqiu/android/community/model/Comment;

    if-nez v0, :cond_e

    .line 358
    invoke-static {p0}, Lcom/xueqiu/android/base/util/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_e
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->k()V

    .line 364
    if-eqz p1, :cond_0

    .line 365
    const-string v0, "upload_image_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    goto/16 :goto_1

    .line 309
    :cond_f
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_write_type"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    goto/16 :goto_3

    .line 337
    :cond_10
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    if-eq v0, v8, :cond_11

    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_14

    .line 338
    :cond_11
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_auto_add_text"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    .line 339
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 340
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->s:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v3}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 343
    :cond_12
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_tweet"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 345
    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v3}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 348
    :cond_13
    invoke-virtual {p0, v9}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 349
    :cond_14
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->p:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_d

    .line 350
    invoke-virtual {p0, v9}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setHintTextColor(I)V

    .line 352
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->u:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    const-string v2, "\u56de\u590d\u6210\u529f\u540e\u5c06\u83b7\u5f97\u63d0\u95ee\u8005\u6240\u652f\u4ed8\u7684\u8d39\u7528\uff0c\u6263\u96641%\u624b\u7eed\u8d39"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_15
    move v0, v2

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ad:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2475
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 2476
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 548
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onNewIntent(Landroid/content/Intent;)V

    .line 550
    const-string v0, "extra_is_from_draft"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ab:Z

    .line 552
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ab:Z

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_draft"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Draft;

    iput-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->aa:Lcom/xueqiu/android/community/model/Draft;

    .line 554
    invoke-direct {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->k()V

    .line 556
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 371
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 372
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->at:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->ak:Z

    if-nez v0, :cond_0

    .line 373
    iput-boolean v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->at:Z

    .line 374
    const-string v0, "first_answer_paid_question"

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6380
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0a004b

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 6381
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030120

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6382
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 6384
    const v2, 0x7f0e0467

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6385
    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$12;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity$12;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6392
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 6394
    invoke-virtual {p0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 6395
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 6396
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 6397
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6398
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6399
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 377
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1392
    const-string v0, "upload_image_name"

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1394
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1231
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onStart()V

    .line 1233
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getDraftSize()I

    move-result v1

    .line 1234
    const v0, 0x7f0e0319

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1235
    if-lez v1, :cond_0

    .line 1236
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    new-instance v2, Lcom/xueqiu/android/community/WriteStatusActivity$21;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$21;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    const v0, 0x7f0e031a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    :goto_0
    return-void

    .line 1246
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
