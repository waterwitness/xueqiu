.class public Lu/aly/fp;
.super Ljava/lang/Object;
.source "FieldValueMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final b:B

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu/aly/fp;-><init>(BZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(BZ)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-byte p1, p0, Lu/aly/fp;->b:B

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/fp;->a:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/fp;->c:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lu/aly/fp;->d:Z

    .line 41
    return-void
.end method
