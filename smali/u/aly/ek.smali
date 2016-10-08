.class public final enum Lu/aly/ek;
.super Ljava/lang/Enum;
.source "UserInfo.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ek;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ek;

.field public static final enum b:Lu/aly/ek;

.field public static final enum c:Lu/aly/ek;

.field public static final enum d:Lu/aly/ek;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ek;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lu/aly/ek;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 57
    new-instance v0, Lu/aly/ek;

    const-string v1, "GENDER"

    .line 61
    const-string v2, "gender"

    invoke-direct {v0, v1, v6, v3, v2}, Lu/aly/ek;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ek;->a:Lu/aly/ek;

    .line 62
    new-instance v0, Lu/aly/ek;

    const-string v1, "AGE"

    const-string v2, "age"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/ek;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ek;->b:Lu/aly/ek;

    .line 63
    new-instance v0, Lu/aly/ek;

    const-string v1, "ID"

    const-string v2, "id"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/ek;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ek;->c:Lu/aly/ek;

    .line 64
    new-instance v0, Lu/aly/ek;

    const-string v1, "SOURCE"

    const-string v2, "source"

    invoke-direct {v0, v1, v5, v7, v2}, Lu/aly/ek;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ek;->d:Lu/aly/ek;

    new-array v0, v7, [Lu/aly/ek;

    sget-object v1, Lu/aly/ek;->a:Lu/aly/ek;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ek;->b:Lu/aly/ek;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/ek;->c:Lu/aly/ek;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/ek;->d:Lu/aly/ek;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/ek;->h:[Lu/aly/ek;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ek;->e:Ljava/util/Map;

    .line 69
    const-class v0, Lu/aly/ek;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 69
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ek;

    .line 70
    sget-object v2, Lu/aly/ek;->e:Ljava/util/Map;

    .line 1122
    iget-object v3, v0, Lu/aly/ek;->g:Ljava/lang/String;

    .line 70
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput-short p3, p0, Lu/aly/ek;->f:S

    .line 114
    iput-object p4, p0, Lu/aly/ek;->g:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ek;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/ek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ek;

    return-object v0
.end method

.method public static values()[Lu/aly/ek;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/ek;->h:[Lu/aly/ek;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/ek;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 118
    iget-short v0, p0, Lu/aly/ek;->f:S

    return v0
.end method
