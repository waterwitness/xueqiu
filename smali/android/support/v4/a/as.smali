.class public final Landroid/support/v4/a/as;
.super Landroid/support/v4/a/bn;
.source "NotificationCompat.java"


# static fields
.field public static final d:Landroid/support/v4/a/bo;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;

.field private final e:Landroid/os/Bundle;

.field private final f:[Landroid/support/v4/a/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2171
    new-instance v0, Landroid/support/v4/a/as$1;

    invoke-direct {v0}, Landroid/support/v4/a/as$1;-><init>()V

    sput-object v0, Landroid/support/v4/a/as;->d:Landroid/support/v4/a/bo;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1841
    iget v0, p0, Landroid/support/v4/a/as;->a:I

    return v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Landroid/support/v4/a/as;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Landroid/support/v4/a/as;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Landroid/support/v4/a/as;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final bridge synthetic e()[Landroid/support/v4/a/cc;
    .locals 1

    .prologue
    .line 1808
    .line 2868
    iget-object v0, p0, Landroid/support/v4/a/as;->f:[Landroid/support/v4/a/bv;

    .line 1808
    return-object v0
.end method
