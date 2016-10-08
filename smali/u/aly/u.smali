.class public final enum Lu/aly/u;
.super Ljava/lang/Enum;
.source "AppInfo.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/u;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/u;

.field public static final enum b:Lu/aly/u;

.field public static final enum c:Lu/aly/u;

.field public static final enum d:Lu/aly/u;

.field public static final enum e:Lu/aly/u;

.field public static final enum f:Lu/aly/u;

.field public static final enum g:Lu/aly/u;

.field public static final enum h:Lu/aly/u;

.field public static final enum i:Lu/aly/u;

.field public static final enum j:Lu/aly/u;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/u;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lu/aly/u;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 69
    new-instance v0, Lu/aly/u;

    const-string v1, "KEY"

    const/4 v2, 0x0

    const-string v3, "key"

    invoke-direct {v0, v1, v2, v5, v3}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->a:Lu/aly/u;

    .line 70
    new-instance v0, Lu/aly/u;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->b:Lu/aly/u;

    .line 71
    new-instance v0, Lu/aly/u;

    const-string v1, "VERSION_INDEX"

    const-string v2, "version_index"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->c:Lu/aly/u;

    .line 72
    new-instance v0, Lu/aly/u;

    const-string v1, "PACKAGE_NAME"

    const-string v2, "package_name"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->d:Lu/aly/u;

    .line 73
    new-instance v0, Lu/aly/u;

    const-string v1, "SDK_TYPE"

    .line 77
    const-string v2, "sdk_type"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->e:Lu/aly/u;

    .line 78
    new-instance v0, Lu/aly/u;

    const-string v1, "SDK_VERSION"

    const/4 v2, 0x6

    const-string v3, "sdk_version"

    invoke-direct {v0, v1, v9, v2, v3}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->f:Lu/aly/u;

    .line 79
    new-instance v0, Lu/aly/u;

    const-string v1, "CHANNEL"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "channel"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->g:Lu/aly/u;

    .line 80
    new-instance v0, Lu/aly/u;

    const-string v1, "WRAPPER_TYPE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "wrapper_type"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->h:Lu/aly/u;

    .line 81
    new-instance v0, Lu/aly/u;

    const-string v1, "WRAPPER_VERSION"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "wrapper_version"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->i:Lu/aly/u;

    .line 82
    new-instance v0, Lu/aly/u;

    const-string v1, "VERTICAL_TYPE"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "vertical_type"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/u;->j:Lu/aly/u;

    const/16 v0, 0xa

    new-array v0, v0, [Lu/aly/u;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/u;->a:Lu/aly/u;

    aput-object v2, v0, v1

    sget-object v1, Lu/aly/u;->b:Lu/aly/u;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/u;->c:Lu/aly/u;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/u;->d:Lu/aly/u;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/u;->e:Lu/aly/u;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/u;->f:Lu/aly/u;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lu/aly/u;->g:Lu/aly/u;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/u;->h:Lu/aly/u;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/u;->i:Lu/aly/u;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/u;->j:Lu/aly/u;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/u;->n:[Lu/aly/u;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/u;->k:Ljava/util/Map;

    .line 87
    const-class v0, Lu/aly/u;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    return-void

    .line 87
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/u;

    .line 88
    sget-object v2, Lu/aly/u;->k:Ljava/util/Map;

    .line 1152
    iget-object v3, v0, Lu/aly/u;->m:Ljava/lang/String;

    .line 88
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput-short p3, p0, Lu/aly/u;->l:S

    .line 144
    iput-object p4, p0, Lu/aly/u;->m:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/u;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/u;

    return-object v0
.end method

.method public static values()[Lu/aly/u;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/u;->n:[Lu/aly/u;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/u;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 148
    iget-short v0, p0, Lu/aly/u;->l:S

    return v0
.end method
