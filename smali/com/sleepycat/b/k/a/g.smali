.class public final enum Lcom/sleepycat/b/k/a/g;
.super Ljava/lang/Enum;
.source "SyncDB.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/k/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/k/a/g;

.field public static final enum b:Lcom/sleepycat/b/k/a/g;

.field public static final enum c:Lcom/sleepycat/b/k/a/g;

.field private static final synthetic d:[Lcom/sleepycat/b/k/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/sleepycat/b/k/a/g;

    const-string v1, "PROCESSOR_METADATA"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/k/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/k/a/g;->a:Lcom/sleepycat/b/k/a/g;

    .line 66
    new-instance v0, Lcom/sleepycat/b/k/a/g;

    const-string v1, "CHANGE_SET"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/k/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/k/a/g;->b:Lcom/sleepycat/b/k/a/g;

    .line 69
    new-instance v0, Lcom/sleepycat/b/k/a/g;

    const-string v1, "PROCESSOR_TXN_DATA"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/k/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/k/a/g;->c:Lcom/sleepycat/b/k/a/g;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/k/a/g;

    sget-object v1, Lcom/sleepycat/b/k/a/g;->a:Lcom/sleepycat/b/k/a/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/k/a/g;->b:Lcom/sleepycat/b/k/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/k/a/g;->c:Lcom/sleepycat/b/k/a/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sleepycat/b/k/a/g;->d:[Lcom/sleepycat/b/k/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/sleepycat/b/k/a/g;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    sget-object v1, Lcom/sleepycat/b/k/a/g;->a:Lcom/sleepycat/b/k/a/g;

    invoke-virtual {v1}, Lcom/sleepycat/b/k/a/g;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 77
    sget-object v0, Lcom/sleepycat/b/k/a/g;->a:Lcom/sleepycat/b/k/a/g;

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    sget-object v1, Lcom/sleepycat/b/k/a/g;->b:Lcom/sleepycat/b/k/a/g;

    invoke-virtual {v1}, Lcom/sleepycat/b/k/a/g;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 81
    sget-object v0, Lcom/sleepycat/b/k/a/g;->b:Lcom/sleepycat/b/k/a/g;

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lcom/sleepycat/b/k/a/g;->c:Lcom/sleepycat/b/k/a/g;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/k/a/g;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/sleepycat/b/k/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/k/a/g;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/k/a/g;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sleepycat/b/k/a/g;->d:[Lcom/sleepycat/b/k/a/g;

    invoke-virtual {v0}, [Lcom/sleepycat/b/k/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/k/a/g;

    return-object v0
.end method
