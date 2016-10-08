.class public Lcom/sleepycat/b/g/ad;
.super Ljava/lang/Object;
.source "LogContext.java"


# instance fields
.field public a:Lcom/sleepycat/b/c/i;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/n/am;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/sleepycat/b/a/v;

.field public h:Z

.field i:Z

.field j:I

.field k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    .line 36
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ad;->b:Z

    .line 44
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ad;->c:Z

    .line 51
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ad;->d:Z

    .line 59
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ad;->e:Z

    .line 68
    iput-object v1, p0, Lcom/sleepycat/b/g/ad;->f:Ljava/util/Collection;

    .line 78
    iput-object v1, p0, Lcom/sleepycat/b/g/ad;->g:Lcom/sleepycat/b/a/v;

    .line 104
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ad;->h:Z

    .line 107
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ad;->i:Z

    .line 108
    iput v0, p0, Lcom/sleepycat/b/g/ad;->j:I

    .line 109
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ad;->k:Z

    return-void
.end method
