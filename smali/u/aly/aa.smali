.class public final enum Lu/aly/aa;
.super Ljava/lang/Enum;
.source "ClientStats.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/aa;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/aa;

.field public static final enum b:Lu/aly/aa;

.field public static final enum c:Lu/aly/aa;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/aa;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lu/aly/aa;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 51
    new-instance v0, Lu/aly/aa;

    const-string v1, "SUCCESSFUL_REQUESTS"

    const-string v2, "successful_requests"

    invoke-direct {v0, v1, v5, v3, v2}, Lu/aly/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aa;->a:Lu/aly/aa;

    .line 52
    new-instance v0, Lu/aly/aa;

    const-string v1, "FAILED_REQUESTS"

    const-string v2, "failed_requests"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aa;->b:Lu/aly/aa;

    .line 53
    new-instance v0, Lu/aly/aa;

    const-string v1, "LAST_REQUEST_SPENT_MS"

    const-string v2, "last_request_spent_ms"

    invoke-direct {v0, v1, v4, v6, v2}, Lu/aly/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aa;->c:Lu/aly/aa;

    new-array v0, v6, [Lu/aly/aa;

    sget-object v1, Lu/aly/aa;->a:Lu/aly/aa;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/aa;->b:Lu/aly/aa;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/aa;->c:Lu/aly/aa;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/aa;->g:[Lu/aly/aa;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/aa;->d:Ljava/util/Map;

    .line 58
    const-class v0, Lu/aly/aa;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aa;

    .line 59
    sget-object v2, Lu/aly/aa;->d:Ljava/util/Map;

    .line 1109
    iget-object v3, v0, Lu/aly/aa;->f:Ljava/lang/String;

    .line 59
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-short p3, p0, Lu/aly/aa;->e:S

    .line 101
    iput-object p4, p0, Lu/aly/aa;->f:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/aa;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/aa;

    return-object v0
.end method

.method public static values()[Lu/aly/aa;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/aa;->g:[Lu/aly/aa;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/aa;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 105
    iget-short v0, p0, Lu/aly/aa;->e:S

    return v0
.end method
