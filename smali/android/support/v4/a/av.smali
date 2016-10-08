.class public final Landroid/support/v4/a/av;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field A:Landroid/app/Notification;

.field public B:Landroid/app/Notification;

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field j:I

.field k:Z

.field public l:Z

.field public m:Landroid/support/v4/a/bh;

.field public n:Ljava/lang/CharSequence;

.field o:I

.field p:I

.field q:Z

.field r:Ljava/lang/String;

.field s:Z

.field t:Ljava/lang/String;

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/a/as;",
            ">;"
        }
    .end annotation
.end field

.field v:Z

.field w:Ljava/lang/String;

.field x:Landroid/os/Bundle;

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/av;->k:Z

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/av;->u:Ljava/util/ArrayList;

    .line 913
    iput-boolean v4, p0, Landroid/support/v4/a/av;->v:Z

    .line 916
    iput v4, p0, Landroid/support/v4/a/av;->y:I

    .line 917
    iput v4, p0, Landroid/support/v4/a/av;->z:I

    .line 921
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    .line 936
    iput-object p1, p0, Landroid/support/v4/a/av;->a:Landroid/content/Context;

    .line 939
    iget-object v0, p0, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 940
    iget-object v0, p0, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 941
    iput v4, p0, Landroid/support/v4/a/av;->j:I

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/av;->C:Ljava/util/ArrayList;

    .line 943
    return-void
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1572
    if-nez p0, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-object p0

    .line 1573
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1574
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v4/a/av;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1060
    iput v0, p0, Landroid/support/v4/a/av;->o:I

    .line 1061
    iput v0, p0, Landroid/support/v4/a/av;->p:I

    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/av;->q:Z

    .line 1063
    return-object p0
.end method

.method public final a(I)Landroid/support/v4/a/av;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 988
    return-object p0
.end method

.method public final a(Landroid/support/v4/a/bh;)Landroid/support/v4/a/av;
    .locals 2

    .prologue
    .line 1493
    iget-object v0, p0, Landroid/support/v4/a/av;->m:Landroid/support/v4/a/bh;

    if-eq v0, p1, :cond_0

    .line 1494
    iput-object p1, p0, Landroid/support/v4/a/av;->m:Landroid/support/v4/a/bh;

    .line 1495
    iget-object v0, p0, Landroid/support/v4/a/av;->m:Landroid/support/v4/a/bh;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Landroid/support/v4/a/av;->m:Landroid/support/v4/a/bh;

    .line 2594
    iget-object v1, v0, Landroid/support/v4/a/bh;->d:Landroid/support/v4/a/av;

    if-eq v1, p0, :cond_0

    .line 2595
    iput-object p0, v0, Landroid/support/v4/a/bh;->d:Landroid/support/v4/a/av;

    .line 2596
    iget-object v1, v0, Landroid/support/v4/a/bh;->d:Landroid/support/v4/a/av;

    if-eqz v1, :cond_0

    .line 2597
    iget-object v1, v0, Landroid/support/v4/a/bh;->d:Landroid/support/v4/a/av;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/av;->a(Landroid/support/v4/a/bh;)Landroid/support/v4/a/av;

    .line 1499
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;
    .locals 1

    .prologue
    .line 1011
    invoke-static {p1}, Landroid/support/v4/a/av;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/av;->b:Ljava/lang/CharSequence;

    .line 1012
    return-object p0
.end method

.method public final a(Z)Landroid/support/v4/a/av;
    .locals 2

    .prologue
    .line 1245
    .line 2291
    if-eqz p1, :cond_0

    .line 2292
    iget-object v0, p0, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1246
    :goto_0
    return-object p0

    .line 2294
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method public final b()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1561
    invoke-static {}, Landroid/support/v4/a/ar;->a()Landroid/support/v4/a/ay;

    move-result-object v0

    .line 3568
    new-instance v1, Landroid/support/v4/a/aw;

    invoke-direct {v1}, Landroid/support/v4/a/aw;-><init>()V

    .line 1561
    invoke-interface {v0, p0}, Landroid/support/v4/a/ay;->a(Landroid/support/v4/a/av;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;
    .locals 1

    .prologue
    .line 1019
    invoke-static {p1}, Landroid/support/v4/a/av;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/av;->c:Ljava/lang/CharSequence;

    .line 1020
    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/a/av;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1129
    return-object p0
.end method
