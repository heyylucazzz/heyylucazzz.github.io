.class public final Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:La/c;

.field public volatile b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La/c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lc/c;->a:La/c;

    .line 6
    sget-object p1, Lc/d;->a:Lc/d;

    .line 8
    iput-object p1, p0, Lc/c;->b:Ljava/lang/Object;

    .line 10
    iput-object p0, p0, Lc/c;->c:Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lc/c;->b:Ljava/lang/Object;

    .line 3
    sget-object v1, Lc/d;->a:Lc/d;

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Lc/c;->c:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    iget-object v2, p0, Lc/c;->b:Ljava/lang/Object;

    .line 13
    if-eq v2, v1, :cond_f

    .line 15
    goto :goto_1c

    .line 16
    :cond_f
    iget-object v1, p0, Lc/c;->a:La/c;

    .line 18
    if-eqz v1, :cond_20

    .line 20
    invoke-virtual {v1}, La/c;->a()Ljava/util/List;

    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lc/c;->b:Ljava/lang/Object;

    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lc/c;->a:La/c;
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1e

    .line 29
    :goto_1c
    monitor-exit v0

    .line 30
    return-object v2

    .line 31
    :catchall_1e
    move-exception v1

    .line 32
    goto :goto_29

    .line 33
    :cond_20
    :try_start_20
    new-instance v1, Ljava/lang/NullPointerException;

    .line 35
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    .line 38
    invoke-static {v1}, Lc/a;->f(Ljava/lang/NullPointerException;)V

    .line 41
    throw v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1e

    .line 42
    :goto_29
    monitor-exit v0

    .line 43
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/c;->b:Ljava/lang/Object;

    .line 3
    sget-object v1, Lc/d;->a:Lc/d;

    .line 5
    if-eq v0, v1, :cond_f

    .line 7
    invoke-virtual {p0}, Lc/c;->a()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const-string v0, "Lazy value not initialized yet."

    .line 18
    :goto_11
    return-object v0
.end method
