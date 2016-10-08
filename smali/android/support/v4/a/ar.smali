.class public final Landroid/support/v4/a/ar;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# static fields
.field private static final a:Landroid/support/v4/a/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 831
    new-instance v0, Landroid/support/v4/a/ba;

    invoke-direct {v0}, Landroid/support/v4/a/ba;-><init>()V

    sput-object v0, Landroid/support/v4/a/ar;->a:Landroid/support/v4/a/ay;

    .line 847
    :goto_0
    return-void

    .line 832
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 833
    new-instance v0, Landroid/support/v4/a/az;

    invoke-direct {v0}, Landroid/support/v4/a/az;-><init>()V

    sput-object v0, Landroid/support/v4/a/ar;->a:Landroid/support/v4/a/ay;

    goto :goto_0

    .line 834
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 835
    new-instance v0, Landroid/support/v4/a/bg;

    invoke-direct {v0}, Landroid/support/v4/a/bg;-><init>()V

    sput-object v0, Landroid/support/v4/a/ar;->a:Landroid/support/v4/a/ay;

    goto :goto_0

    .line 836
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 837
    new-instance v0, Landroid/support/v4/a/bf;

    invoke-direct {v0}, Landroid/support/v4/a/bf;-><init>()V

    sput-object v0, Landroid/support/v4/a/ar;->a:Landroid/support/v4/a/ay;

    goto :goto_0

    .line 838
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 839
    new-instance v0, Landroid/support/v4/a/be;

    invoke-direct {v0}, Landroid/support/v4/a/be;-><init>()V

    sput-object v0, Landroid/support/v4/a/ar;->a:Landroid/support/v4/a/ay;

    goto :goto_0

    .line 840
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 841
    new-instance v0, Landroid/support/v4/a/bd;

    invoke-direct {v0}, Landroid/support/v4/a/bd;-><init>()V

    sput-object v0, Landroid/support/v4/a/ar;->a:Landroid/support/v4/a/ay;

    goto :goto_0

    .line 842
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 843
    new-instance v0, Landroid/support/v4/a/bc;

    invoke-direct {v0}, Landroid/support/v4/a/bc;-><init>()V

    sput-object v0, Landroid/support/v4/a/ar;->a:Landroid/support/v4/a/ay;

    goto :goto_0

    .line 845
    :cond_6
    new-instance v0, Landroid/support/v4/a/bb;

    invoke-direct {v0}, Landroid/support/v4/a/bb;-><init>()V

    sput-object v0, Landroid/support/v4/a/ar;->a:Landroid/support/v4/a/ay;

    goto :goto_0
.end method

.method static synthetic a()Landroid/support/v4/a/ay;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/support/v4/a/ar;->a:Landroid/support/v4/a/ay;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/a/ap;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1794
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/as;

    .line 1795
    invoke-interface {p0, v0}, Landroid/support/v4/a/ap;->a(Landroid/support/v4/a/bn;)V

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/a/aq;Landroid/support/v4/a/bh;)V
    .locals 7

    .prologue
    .line 1801
    if-eqz p1, :cond_0

    .line 1802
    instance-of v0, p1, Landroid/support/v4/a/au;

    if-eqz v0, :cond_1

    .line 1803
    check-cast p1, Landroid/support/v4/a/au;

    .line 1804
    iget-object v0, p1, Landroid/support/v4/a/au;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/a/au;->g:Z

    iget-object v2, p1, Landroid/support/v4/a/au;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/a/au;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/a/br;->a(Landroid/support/v4/a/aq;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1809
    :cond_1
    instance-of v0, p1, Landroid/support/v4/a/ax;

    if-eqz v0, :cond_2

    .line 1810
    check-cast p1, Landroid/support/v4/a/ax;

    .line 1811
    iget-object v0, p1, Landroid/support/v4/a/ax;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/a/ax;->g:Z

    iget-object v2, p1, Landroid/support/v4/a/ax;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/a/ax;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/a/br;->a(Landroid/support/v4/a/aq;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1816
    :cond_2
    instance-of v0, p1, Landroid/support/v4/a/at;

    if-eqz v0, :cond_0

    .line 1817
    check-cast p1, Landroid/support/v4/a/at;

    .line 1818
    iget-object v1, p1, Landroid/support/v4/a/at;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/a/at;->g:Z

    iget-object v3, p1, Landroid/support/v4/a/at;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/a/at;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/a/at;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/a/at;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/a/br;->a(Landroid/support/v4/a/aq;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
