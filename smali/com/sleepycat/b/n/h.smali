.class public final enum Lcom/sleepycat/b/n/h;
.super Ljava/lang/Enum;
.source "LockGrantType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/n/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/n/h;

.field public static final enum b:Lcom/sleepycat/b/n/h;

.field public static final enum c:Lcom/sleepycat/b/n/h;

.field public static final enum d:Lcom/sleepycat/b/n/h;

.field public static final enum e:Lcom/sleepycat/b/n/h;

.field public static final enum f:Lcom/sleepycat/b/n/h;

.field public static final enum g:Lcom/sleepycat/b/n/h;

.field public static final enum h:Lcom/sleepycat/b/n/h;

.field public static final enum i:Lcom/sleepycat/b/n/h;

.field private static final synthetic j:[Lcom/sleepycat/b/n/h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/sleepycat/b/n/h;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/n/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    .line 25
    new-instance v0, Lcom/sleepycat/b/n/h;

    const-string v1, "WAIT_NEW"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/n/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/h;->b:Lcom/sleepycat/b/n/h;

    .line 31
    new-instance v0, Lcom/sleepycat/b/n/h;

    const-string v1, "PROMOTION"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/n/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/h;->c:Lcom/sleepycat/b/n/h;

    .line 37
    new-instance v0, Lcom/sleepycat/b/n/h;

    const-string v1, "WAIT_PROMOTION"

    invoke-direct {v0, v1, v6}, Lcom/sleepycat/b/n/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/h;->d:Lcom/sleepycat/b/n/h;

    .line 43
    new-instance v0, Lcom/sleepycat/b/n/h;

    const-string v1, "EXISTING"

    invoke-direct {v0, v1, v7}, Lcom/sleepycat/b/n/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/h;->e:Lcom/sleepycat/b/n/h;

    .line 50
    new-instance v0, Lcom/sleepycat/b/n/h;

    const-string v1, "DENIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/n/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    .line 56
    new-instance v0, Lcom/sleepycat/b/n/h;

    const-string v1, "WAIT_RESTART"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/n/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    .line 61
    new-instance v0, Lcom/sleepycat/b/n/h;

    const-string v1, "NONE_NEEDED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/n/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/h;->h:Lcom/sleepycat/b/n/h;

    .line 67
    new-instance v0, Lcom/sleepycat/b/n/h;

    const-string v1, "UNCONTENDED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/n/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/h;->i:Lcom/sleepycat/b/n/h;

    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sleepycat/b/n/h;

    sget-object v1, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/n/h;->b:Lcom/sleepycat/b/n/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/n/h;->c:Lcom/sleepycat/b/n/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/n/h;->d:Lcom/sleepycat/b/n/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/b/n/h;->e:Lcom/sleepycat/b/n/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sleepycat/b/n/h;->h:Lcom/sleepycat/b/n/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sleepycat/b/n/h;->i:Lcom/sleepycat/b/n/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/n/h;->j:[Lcom/sleepycat/b/n/h;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/n/h;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/sleepycat/b/n/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/h;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/n/h;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/sleepycat/b/n/h;->j:[Lcom/sleepycat/b/n/h;

    invoke-virtual {v0}, [Lcom/sleepycat/b/n/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/n/h;

    return-object v0
.end method
